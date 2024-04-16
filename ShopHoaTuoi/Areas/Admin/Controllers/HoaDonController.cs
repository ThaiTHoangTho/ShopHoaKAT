using PagedList;
using ShopHoaTuoi.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopHoaTuoi.Areas.Admin.Controllers
{
    public class HoaDonController : Controller
    {
        private ShopHoaTuoiEntities db = new ShopHoaTuoiEntities();
        // GET: Admin/Order
        public ActionResult Index(int? page)
        {
            var query = from o in db.HOADONs
                        select new
                        {
                            ngaylap = o.ngaylap,
                          
                        };
            var items = db.HOADONs.OrderByDescending(x => x.ngaylap).ToList();
            if (items == null)
            {
                page = 1;
            }
            var pageIndex = page ?? 1;
            var pageSize = 5;
            ViewBag.PageSize = pageSize;
            ViewBag.Page = pageIndex;
            return View(items.ToPagedList(pageIndex, pageSize));
        }
        public ActionResult Detail(int id)
        {
            var item = db.HOADONs.Find(id);
            return View(item);

        }
        public ActionResult Partial_ProductDetail(int id)
        {
            var items = db.CTHDs.Where(x => x.mahd == id).ToList();
            return PartialView(items);
        }
        [HttpPost]
        public ActionResult UpdateTT(int id, int trangthai)
        {
            var item = db.HOADONs.Find(id);
            if (item != null)
            {
                db.HOADONs.Attach(item);
                item.tinhtrang = trangthai;
                db.Entry(item).Property(x => x.tinhtrang).IsModified = true;
                db.SaveChanges();
                return Json(new { message = "Success", Success = true });
            }
            return Json(new { message = "Unsuccess", Success = false });
        }
    }
}