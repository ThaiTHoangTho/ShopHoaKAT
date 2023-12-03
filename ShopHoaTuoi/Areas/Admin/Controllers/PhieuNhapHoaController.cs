using Microsoft.Ajax.Utilities;
using ShopHoaTuoi.Models;
using ShopHoaTuoi.Models.EF;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopHoaTuoi.Areas.Admin.Controllers
{
    public class PhieuNhapHoaController : Controller
    {
        private ShopHoaTuoiEntities db = new ShopHoaTuoiEntities();
        // GET: Admin/PhieuNhapHoa
        public ActionResult Index()
        {
            var item = db.PHIEUNHAPHOAs;
            return View(item);
        }
        public ActionResult Add()
        {
            ViewBag.NCC = new SelectList(db.NHACUNGCAPs.ToList(), "mancc", "tenncc");
            ViewBag.HOA = new SelectList(db.HOAs.ToList(), "mahoa", "tenhoa");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(PhieuNhapViewModel model)
        {
           
            if (ModelState.IsValid)
            {
                PHIEUNHAPHOA a= new PHIEUNHAPHOA();
                ViewBag.NCC = new SelectList(db.NHACUNGCAPs.ToList(), "mancc", "tenncc");
                ViewBag.HOA = new SelectList(db.HOAs.ToList(), "mahoa", "tenhoa");
                a.mancc = model.mancc;
                a.ngaylap=DateTime.Now;
                a.CT_PHIEUNHAPHOA.Add(new CT_PHIEUNHAPHOA
                {
                    mahoa = model.mahoa,
                    soluong = model.soluong,
                    gianhap = model.gianhap,
                    tongtien=model.soluong*model.gianhap
                });
                db.PHIEUNHAPHOAs.Add(a);
                db.SaveChanges();
                return RedirectToAction("Index");

            }
            return View(model);

        }

    }
}