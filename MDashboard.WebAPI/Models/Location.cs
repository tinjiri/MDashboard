using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MDashboard.WebAPI.Models
{
    public class Location
    {
        public int LocationId { get; set; }
        public string LocationName { get; set; }
        //public string LocationDescription { get; set; }
        public string LocationCode { get; set; }
        public string City { get; set; }
        public string Province { get; set; }
        public string PostalCode { get; set; }
        public string ZipCode { get; set; }
    }
}
