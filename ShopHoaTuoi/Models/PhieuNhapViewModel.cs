using ShopHoaTuoi.Models.EF;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopHoaTuoi.Models
{
    public class PhieuNhapViewModel
    {
            public int mancc { get; set; }
            public List<CT_PNViewModel> cT_PNViewModels { get; set; }
    }
    public class CT_PNViewModel
    {
        public int mahoa { get; set; }
        public int soluong { get; set; }
        public decimal gianhap { get; set; }
    }
}