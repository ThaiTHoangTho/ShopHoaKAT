using ShopHoaTuoi.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopHoaTuoi.Controllers
{
    public class DonDatHangController : Controller
    {
        private ShopHoaTuoiEntities db= new ShopHoaTuoiEntities();
        // GET: DonDatHang
        public ActionResult Index()
        {
            var user = Session["taikhoan"] as ShopHoaTuoi.Models.EF.TAIKHOAN;
            if (user != null)
            {
                var orders = db.HOADONs.Where(o => o.makh == user.makh).ToList();

                return View(orders);


            }
            return View();
        }
        public ActionResult Details(int id)
        {
            var item = db.HOADONs.Find(id);
            return View(item);
        }
        public ActionResult Partial_ProductDetail(int id)
        {
            var items = db.CTHDs.Where(x => x.mahd == id).ToList();
            return PartialView(items);
        }


    }
}