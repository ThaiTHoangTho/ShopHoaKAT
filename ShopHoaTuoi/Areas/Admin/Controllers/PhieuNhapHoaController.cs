using Microsoft.Ajax.Utilities;
using PagedList;
using ShopHoaTuoi.Models;
using ShopHoaTuoi.Models.EF;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using static ShopHoaTuoi.Models.PhieuNhapViewModel;

namespace ShopHoaTuoi.Areas.Admin.Controllers
{
    public class PhieuNhapHoaController : Controller
    {
        private ShopHoaTuoiEntities db = new ShopHoaTuoiEntities();
        // GET: Admin/PhieuNhapHoa
        public ActionResult Index(int?page)
        {
            IEnumerable<PHIEUNHAPHOA> items = db.PHIEUNHAPHOAs.OrderByDescending(x => x.mapnh);
            var pageSize = 10;
            if (page == null)
            {
                page = 1;
            }
            var pageIndex = page.HasValue ? Convert.ToInt32(page) : 1;
            items = items.ToPagedList(pageIndex, pageSize);
            ViewBag.PageSize = pageSize;
            ViewBag.Page = page;
            return View(items);
        }
        public ActionResult Add()
        {
            ViewBag.NCC = db.NHACUNGCAPs.ToList();
            ViewBag.HOA = db.HOAs.ToList();
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(PhieuNhapViewModel model)
        {
            if (ModelState.IsValid)
            {
                var PN = new PHIEUNHAPHOA()
                {
                    ngaylap = DateTime.Now,
                    mancc = model.mancc,
                };
                db.PHIEUNHAPHOAs.Add(PN);
                db.SaveChanges();
                var ma = PN.mapnh;
                foreach (var item in model.cT_PNViewModels)
                {
                    var ct = new CT_PHIEUNHAPHOA
                    {
                        mapnh = ma,
                        mahoa = item.mahoa,
                        soluong = item.soluong,
                        gianhap = item.gianhap,
                        tongtien = item.soluong * item.gianhap
                    };
                    db.CT_PHIEUNHAPHOA.Add(ct);
                }

                // Lưu chi tiết phiếu nhập vào cơ sở dữ liệu
                db.SaveChanges();
                return RedirectToAction("Index", "Home");

            }
            ViewBag.NCC = db.NHACUNGCAPs.ToList();
            ViewBag.HOA = db.HOAs.ToList();
         
            return View(model);

        }
        public ActionResult Detail(int id)
        {
            var item = db.PHIEUNHAPHOAs.Find(id);
            return View(item);

        }
        public ActionResult Partial_CTPN(int id)
        {
            var items = db.CT_PHIEUNHAPHOA.Where(x => x.mapnh == id).ToList();
            return PartialView(items);
        }
    }

}