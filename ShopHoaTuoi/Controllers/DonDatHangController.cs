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
            return View();
        }
        public ActionResult Details(int customerId)
        {
            ViewBag.makh = customerId;
           var user = Session["taikhoan"] as ShopHoaTuoi.Models.EF.TAIKHOAN;
            if (user != null)
            {
                var orders = db.HOADONs.Where(o => o.makh == customerId).ToList();
                return View(orders);
            }
            return View();
            
        }

    }
}