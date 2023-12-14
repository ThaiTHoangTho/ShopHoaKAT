namespace ShopHoaTuoi.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DANHGIA")]
    public partial class DANHGIA
    {
        public int id { get; set; }

        public int mahoa { get; set; }

        public int rating { get; set; }

        [Required]
        [StringLength(200)]
        public string comment { get; set; }

        public int id_user { get; set; }

        public DateTime ngaydang { get; set; }

        public virtual HOA HOA { get; set; }

        public virtual TAIKHOAN TAIKHOAN { get; set; }
    }
}
