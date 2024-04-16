using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ShopHoaTuoi.Models
{
    public class LoginViewModel
    {
        [Required(ErrorMessage = "Vui lòng nhập tên đăng nhập!!")]
        public string tendangnhap { get; set; }

        [Required(ErrorMessage = "Vui lòng nhập mật khẩu!!")]
        public string matkhau { get; set; }
        public bool Remember { get; set; }
        public string HoTen { get; set; }
        public string DiaChi { get; set; }
        public string Email { get; set; }
        public string SDT { get; set; }

    }
}