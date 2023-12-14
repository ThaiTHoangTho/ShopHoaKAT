using ShopHoaTuoi.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopHoaTuoi.Areas.Admin.Controllers
{
    public class NhaCungCapController : Controller
    {
        // GET: Admin/NhaCungCap
        private ShopHoaTuoiEntities db = new ShopHoaTuoiEntities();
        public ActionResult Index()
        {
            var items = db.NHACUNGCAPs;
            return View(items);
        }
        public ActionResult Add()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(NHACUNGCAP model)
        {
            if (ModelState.IsValid)
            {
                db.NHACUNGCAPs.Add(model);
                db.SaveChanges();
                return RedirectToAction("Index");

            }
            return View(model);

        }
        public ActionResult Edit(int id)
        {
            var item = db.NHACUNGCAPs.Find(id);
            return View(item);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(NHACUNGCAP model)
        {
            if (ModelState.IsValid)
            {

                db.NHACUNGCAPs.Attach(model);
                db.Entry(model).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult Delete(int id)
        {
            var item = db.NHACUNGCAPs.Find(id);
            if (item != null)
            {
                db.NHACUNGCAPs.Remove(item);
                db.SaveChanges();
                return Json(new { success = true });
            }

            return Json(new { success = false });
        }
    }
}