using ShopHoaTuoi.Models.EF;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopHoaTuoi.Models
{
    public class PhieuNhapViewModel
    {
        [Key]
        public int mapn { get; set; }
        [Required(ErrorMessage = "Vui lòng chọn tên nhà cung cấp")]
        public int mancc  { get; set; }
        [Phone]
        [Required(ErrorMessage = "Vui lòng chọn mã hoa")]
        public int mahoa { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập số lượng")]
        public int soluong { get; set; }
        public decimal gianhap { get; set; }
        public DateTime ngaylap { get; set; }

        public virtual HOA HOA { get; set; }
        public virtual NHACUNGCAP NHACUNGCAP { get; set; }
        public object CT_PHIEUNHAPHOA  { get; internal set; }
    }
}