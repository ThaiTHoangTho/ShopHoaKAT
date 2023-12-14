using Microsoft.AspNet.Identity.EntityFramework;
using ShopHoaTuoi.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopHoaTuoi.Controllers
{
    public class DanhGiaController : Controller
    {
        private ShopHoaTuoiEntities db= new ShopHoaTuoiEntities();
        // GET: DanhGia
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult _DanhGia(int mahoa)
        {
            ViewBag.mahoa = mahoa;
            var item = new DANHGIA();
            var user = Session["taikhoan"] as ShopHoaTuoi.Models.EF.TAIKHOAN; 
                if (user != null)
                {
                    item.id_user = user.id;
                return PartialView(item);

            }
                return PartialView();
                   
        }
        [HttpPost]
        public ActionResult UpDanhGia(DANHGIA dg)
        {
            if(ModelState.IsValid)
            {
                dg.ngaydang=DateTime.Now;
                db.DANHGIAs.Add(dg);
                db.SaveChanges();
                return Json(new { Success = true });
            }
            return Json(new { Success = false });

        }
        [AllowAnonymous]
        public ActionResult _LoadDanhGia(int mahoa)
        {
            var item=db.DANHGIAs.Where(x=>x.mahoa==mahoa).OrderByDescending(x=>x.id).ToList();
            ViewBag.Count = item.Count;
            return PartialView(item);
        }
    }
}