using PagedList;
using ShopHoaTuoi.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopHoaTuoi.Models
{
    public class PriceRange
    {
            public bool PriceRange200To500 { get; set; }
            public bool PriceRange500To1000 { get; set; }
            public bool PriceRange1000To2000 { get; set; }
            public bool PriceRange2000To3000 { get; set; }
            public bool PriceRange3000To4000 { get; set; }
        public IPagedList<HOA> PagedProducts { get; set; }
       
        
    }
}