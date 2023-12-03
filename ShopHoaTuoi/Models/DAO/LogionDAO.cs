using ShopHoaTuoi.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopHoaTuoi.Models
{
    public class LogionDAO
    {
        private ShopHoaTuoiEntities db = new ShopHoaTuoiEntities();
        public taikhoan AddTK(taikhoan t)
        {
            db.taikhoans.Add(t);
            db.SaveChanges();
            return t;
        }
        public taikhoan getItems(string tendangnhap)
        {
            return db.taikhoans.FirstOrDefault(x => x.username == tendangnhap);
        }

        public List<taikhoan> getList() { return db.taikhoans.ToList(); }
      
   
        /*   public NHANVIEN Update(NHANVIEN nv)
           {
               var us = db.NHANVIENs.FirstOrDefault(x => x.tennv == nv.Id);
               us.Password = user.Password;
               us.HoTen = user.HoTen;
               us.SDT = user.SDT;
               us.DiaChi = user.DiaChi;
               us.Email = user.Email;
               db.SaveChanges();
               return us;

           }*/
        public int Login(string tendangnhap, string password)
        {
            var user = db.taikhoans.FirstOrDefault(x => x.username == tendangnhap);
            if (user == null)
            {
                return -2;//username không tồn tại
            }
            else 
            {
                if (user.password == password)
                {
                    return 1;
                }  
                else { return -1; }

            }
           

        }
        public int Register(string tendangnhap)
        {
            var user = db.taikhoans.FirstOrDefault(x => x.username == tendangnhap);
            if (user == null)
            {
                return 1;//không có username tồn tại
            }
            else
            {
                return -1;
            }
        }
        public int checkRole(string username)
        {
            var tk = db.taikhoans.FirstOrDefault(x => x.username == username);
            if (tk.role == "admin")
            {
                return 1;

            }
            else return -1;
        

        }
    }
}