using PagedList;
using ShopHoaTuoi.Models;
using ShopHoaTuoi.Models.EF;
using System;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopHoaTuoi.Controllers
{
    public class ProductController : Controller
    {
        private ShopHoaTuoiEntities db = new ShopHoaTuoiEntities();
        private const int PageSize = 10; // Số sản phẩm trên mỗi trang
        // GET: Products
        public ActionResult Index(int? page)
        {
            IEnumerable<HOA> items = db.HOAs.OrderByDescending(x => x.mahoa);
           // var PageSize = 15;
            if (page == null)
            {
                page = 1;
            }
            var pageIndex = page.HasValue ? Convert.ToInt32(page) : 1;
            items = items.ToPagedList(pageIndex, PageSize);
            ViewBag.PageSize = PageSize;
            ViewBag.Page = page;
            return View(items);
        }
        public ActionResult ProductCategory(string tenloai, int id)
        {
            var item = db.HOAs.ToList();
            if (id > 0)
            {
                item = item.Where(x => x.maloai == id).ToList();
            }
            var cate = db.LOAIHOAs.Find(id);
            if (cate != null)
            {
                ViewBag.CateName = cate.tenloai;
            }
            ViewBag.CateId = id;
            return View(item);
        }
        public ActionResult Detail(int id)
        {
            var item = db.HOAs.Find(id);
            var items = db.DANHGIAs.Where(x => x.mahoa == id).OrderByDescending(x => x.id).ToList();
            ViewBag.Count = items.Count;
            ViewBag.Product = db.HOAs.Where(x => x.maloai == item.maloai);
            return View(item);
        }
       
        public ActionResult Partial_ItemsbyCategoryId()
        {
            var items = db.HOAs.ToList();
            return PartialView("_Partial_ItemsbyCategoryId", items);
        }
        public ActionResult Partial_ProductsHot()
        {
            var items = db.HOAs.Where(p => p.banchay == true).Take(12).ToList();
            return PartialView("_Partial_ProductsHot", items);
        }
        public ActionResult Search(string keyword, int? page)
        {
            // Lấy danh sách sản phẩm từ cơ sở dữ liệu
            var products = db.HOAs.Where(x => x.tenhoa.Contains(keyword)||x.LOAIHOA.tenloai.Contains(keyword)).ToList();
            int pageIndex = page.HasValue ? Convert.ToInt32(page) : 1;
            var pagedFilteredProducts = products.ToPagedList(pageIndex, PageSize);
            // Trả về danh sách sản phẩm
            return View("Index", pagedFilteredProducts);
        }
        [HttpPost]
        public ActionResult FilterProducts(int ?page)
        {
            int minPrice = 0; int maxPrice = 0;
            if (Request.Form["minPrice"] != null)
            {
                maxPrice = 490000;
            }

           
            if (Request.Form["priceRange1"] != null)
            {
                minPrice = 500000;
                maxPrice = 1000000;
            }
            else if (Request.Form["priceRange2"] != null)
            {
                minPrice = 1000000;
                maxPrice = 2000000;
            }
            else if (Request.Form["priceRange3"] != null)
            {
                minPrice = 2000000;
                maxPrice = 6000000 ;
            }
            List<HOA> hoa = db.HOAs.ToList();
            List<HOA> filteredProducts = hoa.Where(h => h.giaban >= minPrice && h.giaban <= maxPrice).ToList();
            int pageIndex = page.HasValue ? Convert.ToInt32(page) : 1;
            var pagedFilteredProducts = filteredProducts.ToPagedList(pageIndex, PageSize);
            return View("Index", pagedFilteredProducts);

        }
        public ActionResult _LoadMoTa(int id)
        {
            var items = db.HOAs.Where(x => x.mahoa == id).ToList();
            return PartialView(items);
        }

    }
}