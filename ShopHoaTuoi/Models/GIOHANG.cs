﻿using ShopHoaTuoi.Models.EF;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Reflection;
using System.Web;

namespace ShopHoaTuoi.Models
{
    public class GIOHANG
    {
        public List<CTGH> Items { get; set; }
        public GIOHANG()
        {
            this.Items = new List<CTGH>();
        }
        public void Addtocart(CTGH item, int quantity)
        {
           
            var checkExits = Items.FirstOrDefault(x => x.mahoa == item.mahoa);
            if (checkExits != null)
            {
                checkExits.soluong += quantity;
                checkExits.tongtien = checkExits.giaban * checkExits.soluong;
            }
            else
            {
                Items.Add(item);
            }
        }
        public void Remove(int id)
        {
            var checkExits = Items.SingleOrDefault(x => x.mahoa == id);
            if (checkExits != null)
            {
                Items.Remove(checkExits);

            }
        }
        public void UpdateQuanity(int id, int quantity)
        {
            
            var checkExits = Items.SingleOrDefault(x => x.mahoa == id);
            if (checkExits != null)
            {
                checkExits.soluong = quantity;
                checkExits.tongtien = checkExits.giaban * checkExits.soluong;
            }

        }
        public void CartPlus(int productid)
        {
            if (!System.Web.HttpContext.Current.Session["Cart"].Equals(""))
            {
                List<CTGH> listcart = (List<CTGH>)System.Web.HttpContext.Current.Session["Cart"];
                int pos = 0;
                foreach (var item in listcart)
                {
                    if (item.mahoa == productid)
                    {
                        listcart[pos].soluong++;
                        listcart[pos].tongtien = listcart[pos].giaban * listcart[pos].soluong;
                        break;
                    }
                    pos++;
                }
                System.Web.HttpContext.Current.Session["Cart"] = listcart;

            }
        }
        public void CartMinus(int productid)
        {
            if (!System.Web.HttpContext.Current.Session["Cart"].Equals(""))
            {
                List<CTGH> listcart = (List<CTGH>)System.Web.HttpContext.Current.Session["Cart"];
                int pos = 0;
                foreach (var item in listcart)
                {
                    if (item.mahoa == productid && listcart[pos].soluong > 1)
                    {
                        listcart[pos].soluong--;
                        listcart[pos].tongtien = listcart[pos].giaban * listcart[pos].soluong;
                        break;
                    }
                    pos++;
                }
                System.Web.HttpContext.Current.Session["Cart"] = listcart;

            }
        }
        public decimal GetTotalPrice()
        {
            return Items.Sum(x => x.tongtien);
        }
        public int GetTotalQuanity()
        {
            return Items.Sum(x => x.soluong);
        }
        public void Clear()
        {
            Items.Clear();
        }
      
    }
    public partial class CTGH
    {
        public int id { get; set; }
        public Nullable<int> magh { get; set; }
        public int mahoa { get; set; }
        public string tenhoa { get; set; }
        public string anh { get; set; }
        public decimal giaban { get; set; }

        public decimal tongtien { get; set; }
        public int soluong { get; set; }

        [NotMapped] // Đánh dấu thuộc tính này không phải là một cột trong cơ sở dữ liệu
        public int SoLuongTrongKho { get; set; }
        public virtual HOA HOA { get; set; }
    }

}