using Microsoft.Ajax.Utilities;
using ShopHoaTuoi.Models.EF;
using ShopHoaTuoi.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VNPAY_CS_ASPX;

namespace ShopHoaTuoi.Controllers
{
    public class ShoppingCartController : Controller
    {
        private ShopHoaTuoiEntities db = new ShopHoaTuoiEntities();
       
        // GET: ShoppingCart

        public ActionResult Index()
        {

            GIOHANG cart = (GIOHANG)Session["Cart"];
            if (cart != null && cart.Items.Any())
            {
                ViewBag.CheckCart = cart;
            }
            return View();
        }
        public ActionResult VnpayReturn()
        {
            if (Request.QueryString.Count > 0)
            {
                string vnp_HashSecret = ConfigurationManager.AppSettings["vnp_HashSecret"]; //Chuoi bi mat
                var vnpayData = Request.QueryString;
                VnPayLibrary vnpay = new VnPayLibrary();

                foreach (string s in vnpayData)
                {
                    //get all querystring data
                    if (!string.IsNullOrEmpty(s) && s.StartsWith("vnp_"))
                    {
                        vnpay.AddResponseData(s, vnpayData[s]);
                    }
                }
                String madonhang = Convert.ToString(vnpay.GetResponseData("vnp_TxnRef"));
                long vnpayTranId = Convert.ToInt64(vnpay.GetResponseData("vnp_TransactionNo"));
                string vnp_ResponseCode = vnpay.GetResponseData("vnp_ResponseCode");
                string vnp_TransactionStatus = vnpay.GetResponseData("vnp_TransactionStatus");
                String vnp_SecureHash = Request.QueryString["vnp_SecureHash"];
                String TerminalID = Request.QueryString["vnp_TmnCode"];
                long vnp_Amount = Convert.ToInt64(vnpay.GetResponseData("vnp_Amount")) / 100;
                String bankCode = Request.QueryString["vnp_BankCode"];

                bool checkSignature = vnpay.ValidateSignature(vnp_SecureHash, vnp_HashSecret);
                if (checkSignature)
                {
                    if (vnp_ResponseCode == "00" && vnp_TransactionStatus == "00")
                    {
                        var item=db.HOADONs.FirstOrDefault(x=>x.madonhang==madonhang);
                        if(item!=null)

                        {
                            item.tinhtrang = 2;
                            db.HOADONs.Attach(item);
                            db.Entry(item).State = System.Data.Entity.EntityState.Modified;
                            db.SaveChanges();
                        }    

                        //Thanh toan thanh cong
                        ViewBag.InnerText = "Giao dịch được thực hiện thành công. Cảm ơn quý khách đã sử dụng dịch vụ";
                        //log.InfoFormat("Thanh toan thanh cong, OrderId={0}, VNPAY TranId={1}", orderId, vnpayTranId);
                    }
                    else
                    {
                        //Thanh toan khong thanh cong. Ma loi: vnp_ResponseCode
                        ViewBag.InnerText = "Có lỗi xảy ra trong quá trình xử lý.Mã lỗi: " + vnp_ResponseCode;
                        //log.InfoFormat("Thanh toan loi, OrderId={0}, VNPAY TranId={1},ResponseCode={2}", orderId, vnpayTranId, vnp_ResponseCode);
                    }

                    /*displayTmnCode.InnerText = "Mã Website (Terminal ID):" + TerminalID;
                    displayTxnRef.InnerText = "Mã giao dịch thanh toán:" + orderId.ToString();
                    displayVnpayTranNo.InnerText = "Mã giao dịch tại VNPAY:" + vnpayTranId.ToString();*/
                    ViewBag.Success = "Số tiền thanh toán (VND):" + vnp_Amount.ToString();
                   // displayBankCode.InnerText = "Ngân hàng thanh toán:" + bankCode;

                   /* displayTmnCode.InnerText = "Mã Website (Terminal ID):" + TerminalID;
                    displayTxnRef.InnerText = "Mã giao dịch thanh toán:" + orderId.ToString();
                    displayVnpayTranNo.InnerText = "Mã giao dịch tại VNPAY:" + vnpayTranId.ToString();
                    displayAmount.InnerText = "Số tiền thanh toán (VND):" + vnp_Amount.ToString();
                    displayBankCode.InnerText = "Ngân hàng thanh toán:" + bankCode;*/
                }
            }
               return View();
        }
        public ActionResult CheckOutSuccess()
        {
            return View();
        }
        public ActionResult Checkout()
        {
            GIOHANG cart = (GIOHANG)Session["Cart"];
            if (cart != null && cart.Items.Any())
            {
                ViewBag.CheckCart = cart;
            }
            return View();
        }
        public ActionResult Partial_CheckOut()
        {
            return PartialView();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Checkout(OrderModelView orderView)
        {
            HOADON order = new HOADON();
            KHACHHANG kh = new KHACHHANG();
            var code = new { Success = false, Code = -1, Url = ""};
            if (ModelState.IsValid)
            {
                GIOHANG cart = (GIOHANG)Session["Cart"];
                if (cart != null)
                {
                    var user = Session["taikhoan"] as ShopHoaTuoi.Models.EF.TAIKHOAN;
                    if (user == null)
                    {
                        kh.tenkh = orderView.tenkh;
                        kh.sdt = orderView.sdt;
                        kh.diachi = orderView.diachi;
                        kh.email = orderView.email;
                        db.KHACHHANGs.Add(kh);
                        order.makh = kh.makh;
                    }
                    else
                    {
                        order.makh = user.makh;
                    }
                    cart.Items.ForEach(x => order.CTHDs.Add(new CTHD
                    {

                        mahoa = x.mahoa,
                        soluong = x.soluong,
                        tongtien = x.tongtien

                    }));
                    //order.= cart.Items.Sum(x => (x.giaban * x.soluong));
                    //order.makh = kh.makh;
                    order.tinhtrang = 1;//1 chưa 2 rồi
                    order.ngaylap = DateTime.Now;
                    order.thanhtoan = orderView.thanhtoan;
                    Random rd = new Random();
                    order.madonhang = "DH" + rd.Next(0, 9) + rd.Next(0, 9) + rd.Next(0, 9) + rd.Next(0, 9);

                    db.HOADONs.Add(order);
                    db.SaveChanges();
                    //send mail
                    var strSanPham = "";
                    var thanhtien = decimal.Zero;
                    var TongTien = decimal.Zero;
                    foreach (var sp in cart.Items)
                    {
                        strSanPham += "<tr>";
                        strSanPham += "<td>" + sp.tenhoa + "</td>";
                        strSanPham += "<td>" + sp.soluong + "</td>";
                        strSanPham += "<td>" + ShopHoaTuoi.Common.Common.FormatNumber(sp.tongtien, 0) + "</td>";
                        strSanPham += "</tr>";
                        thanhtien += sp.giaban * sp.soluong;
                    }
                    TongTien = thanhtien;
                    string contentCustomer = System.IO.File.ReadAllText(Server.MapPath("~/Content/send/send2.html"));
                    contentCustomer = contentCustomer.Replace("{{MaDon}}", order.madonhang);
                    contentCustomer = contentCustomer.Replace("{{SanPham}}", strSanPham);
                    contentCustomer = contentCustomer.Replace("{{NgayDat}}", DateTime.Now.ToString("dd/MM/yyyy"));
                    contentCustomer = contentCustomer.Replace("{{TenKhachHang}}", kh.tenkh);
                    contentCustomer = contentCustomer.Replace("{{Phone}}", kh.tenkh);
                    contentCustomer = contentCustomer.Replace("{{Email}}", orderView.email);
                    contentCustomer = contentCustomer.Replace("{{DiaChiNhanHang}}", kh.diachi);
                    contentCustomer = contentCustomer.Replace("{{ThanhTien}}", ShopHoaTuoi.Common.Common.FormatNumber(thanhtien, 0));
                    contentCustomer = contentCustomer.Replace("{{TongTien}}", ShopHoaTuoi.Common.Common.FormatNumber(TongTien, 0));
                    ShopHoaTuoi.Common.Common.SendMail("HighKat_FLower", "Đơn đặt hàng #" + order.madonhang, contentCustomer.ToString(), orderView.email);
                    cart.Clear();
                    code = new { Success = true, Code = orderView.thanhtoan, Url = "" };
                    if (orderView.thanhtoan == 2)
                    {
                        var url = UrlPayment(orderView.TypePaymentVN, order.madonhang);
                        code = new { Success = true, Code = orderView.thanhtoan, Url = url };
                    }
                }
            }
            return Json(code);

        }
        public ActionResult Partial_Item_Pay()
        {
            GIOHANG cart = (GIOHANG)Session["Cart"];
            if (cart != null && cart.Items.Any())
            {
                return PartialView(cart.Items);
            }
            return PartialView();
        }
        public ActionResult Partial_Item_Cart()
        {
            GIOHANG cart = (GIOHANG)Session["Cart"];
            if (cart != null && cart.Items.Any())
            {
                return PartialView(cart.Items);
            }
            return PartialView();
        }
        
        [HttpPost]
        public ActionResult Addtocart(int id, int quantity)
        {
            var code = new { Success = false, msg = "", code = -1, Count = 0 };
            var checkProduct = db.HOAs.FirstOrDefault(x => x.mahoa == id);
            if (checkProduct != null)
            {
                GIOHANG cart = (GIOHANG)Session["Cart"];
                if (cart == null)
                {
                    cart = new GIOHANG();
                }
                CTGH shoppingcart = new CTGH
                {
                    mahoa = checkProduct.mahoa,
                    tenhoa = checkProduct.tenhoa,
                    soluong = quantity,
                    anh = checkProduct.anh,
                    giaban = (decimal)checkProduct.giaban

                };
                shoppingcart.tongtien = shoppingcart.soluong * shoppingcart.giaban;
                cart.Addtocart(shoppingcart, quantity);
                Session["Cart"] = cart;
                code = new { Success = true, msg = "Thêm vào giỏ hàng thành công", code = 1, Count = cart.Items.Count };
            }
            return Json(code);
        }
        [HttpPost]
        public ActionResult Delete(int id)
        {
            var code = new { Success = false, msg = "", code = -1, Count = 0 };
            GIOHANG cart = (GIOHANG)Session["Cart"];
            if (cart != null)
            {
                var checkPro = cart.Items.FirstOrDefault(x => x.mahoa == id);
                if (checkPro != null)
                {
                    cart.Remove(id);
                    code = new { Success = true, msg = "", code = 1, Count = cart.Items.Count };

                }
            }
            return Json(code);
        }
        [HttpPost]
        public ActionResult DeleteAll()
        {
            GIOHANG cart = (GIOHANG)Session["Cart"];
            if (cart != null)
            {
                cart.Clear();
                return Json(new { Success = true });
            }
            return Json(new { Success = false });
        }
        [HttpPost]
        public ActionResult Update(int id, int quantity)
        {
            GIOHANG cart = (GIOHANG)Session["Cart"];
            if (cart != null)
            {
                cart.UpdateQuanity(id, quantity);
                return Json(new { Success = true });
            }
            return Json(new { Success = false });
        }
   
        public string UrlPayment(int TypePaymentVN, string orderCode)
        {
            var urlPayment = "";
            var order = db.HOADONs.FirstOrDefault(x => x.madonhang == orderCode);
            //Get Config Info
            string vnp_Returnurl = ConfigurationManager.AppSettings["vnp_Returnurl"]; //URL nhan ket qua tra ve 
            string vnp_Url = ConfigurationManager.AppSettings["vnp_Url"]; //URL thanh toan cua VNPAY 
            string vnp_TmnCode = ConfigurationManager.AppSettings["vnp_TmnCode"]; //Ma định danh merchant kết nối (Terminal Id)
            string vnp_HashSecret = ConfigurationManager.AppSettings["vnp_HashSecret"]; //Secret Key

            //Build URL for VNPAY
            VnPayLibrary vnpay = new VnPayLibrary();

            var detail = db.CTHDs.FirstOrDefault(x => x.mahd == order.mahd);
            var Price = (long)detail.tongtien * 100;
            vnpay.AddRequestData("vnp_Version", VnPayLibrary.VERSION);
            vnpay.AddRequestData("vnp_Command", "pay");
            vnpay.AddRequestData("vnp_TmnCode", vnp_TmnCode);
            vnpay.AddRequestData("vnp_Amount", Price.ToString()); //Số tiền thanh toán. Số tiền không mang các ký tự phân tách thập phân, phần nghìn, ký tự tiền tệ. Để gửi số tiền thanh toán là 100,000 VND (một trăm nghìn VNĐ) thì merchant cần nhân thêm 100 lần (khử phần thập phân), sau đó gửi sang VNPAY là: 10000000
            if (TypePaymentVN == 1)
            {
                vnpay.AddRequestData("vnp_BankCode", "VNPAYQR");
            }
            else if (TypePaymentVN == 2)
            {
                vnpay.AddRequestData("vnp_BankCode", "VNBANK");
            }
            else if (TypePaymentVN == 3)
            {
                vnpay.AddRequestData("vnp_BankCode", "INTCARD");
            }

            vnpay.AddRequestData("vnp_CreateDate", order.ngaylap.ToString("yyyyMMddHHmmss"));
            vnpay.AddRequestData("vnp_CurrCode", "VND");
            vnpay.AddRequestData("vnp_IpAddr", Utils.GetIpAddress());
            vnpay.AddRequestData("vnp_Locale", "vn");
            vnpay.AddRequestData("vnp_OrderInfo", "Thanh toán đơn hàng :" + order.madonhang);
            vnpay.AddRequestData("vnp_OrderType", "other"); //default value: other

            vnpay.AddRequestData("vnp_ReturnUrl", vnp_Returnurl);
            vnpay.AddRequestData("vnp_TxnRef", order.madonhang); // Mã tham chiếu của giao dịch tại hệ thống của merchant. Mã này là duy nhất dùng để phân biệt các đơn hàng gửi sang VNPAY. Không được trùng lặp trong ngày

            //Add Params of 2.1.0 Version
            //Billing

            urlPayment = vnpay.CreateRequestUrl(vnp_Url, vnp_HashSecret);
            //log.InfoFormat("VNPAY URL: {0}", paymentUrl);
            return urlPayment;
        }
    }
}