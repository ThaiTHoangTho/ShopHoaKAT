using ShopHoaTuoi.Models.DAO;
using ShopHoaTuoi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopHoaTuoi.Models.EF;
using ShopHoaTuoi.Common;

namespace ShopHoaTuoi.Controllers
{
    public class LoginController : Controller
    {
        ShopHoaTuoiEntities db = new ShopHoaTuoiEntities();
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login(LoginViewModel model)
        {
            if (ModelState.IsValid)
            {
                var dao = new LogionDAO();
                var result = dao.Login(model.tendangnhap, model.matkhau);
                if (result == 1)
                {

                    Session["taikhoan"] = result;
                    var checkrole = dao.checkRole(model.tendangnhap);
                    switch(checkrole)
                    {
                        case 1: return RedirectToAction("Home", "Admin"); 
                        case -1: return RedirectToAction("Index", "Home");
                    }
                  
                }
                else if (result == -1)
                {
                    ModelState.AddModelError("", "Mật khẩu không đúng. Vui lòng kiểm tra lại!!");
                }
                else if (result == -2)
                {
                    ModelState.AddModelError("", "Tên đăng nhập không tồn tại. Vui lòng kiểm tra lại!!");
                }
            }
            return View("index");
        }
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Register(taikhoan taikhoan)
        {
            if (ModelState.IsValid)
            {
                var dao = new LogionDAO();
                var result = dao.Register(taikhoan.username);
                if (result == 1)
                {
                    db.taikhoans.Add(taikhoan);
                    db.SaveChanges();
                    return RedirectToAction("Index", "Login");
                }
                else
                if (result == -1)
                {
                    ModelState.AddModelError("", "Tên đăng nhập đã tồn tại!");
                }

            }
            return View("index");
        }
    }

}