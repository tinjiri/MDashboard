using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MDashboard.WebAPI.Models
{
    public class Title
    {
        public int TitleId { get; set; }
        public string TitleName { get; set; }
        public string TitleDescription { get; set; }
        public string TitleCode { get; set; }
        public string TitleAbbreviation { get; set; }
    }
}
