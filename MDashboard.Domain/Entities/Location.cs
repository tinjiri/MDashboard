
using System;
using System.Collections.Generic;
using System.Text;
using MDashboard.Domain.Common;

namespace MDashboard.Domain.Entities
{
    public class Location : AuditEntity
    {
        public int LocationId { get; set; }
        public string LocationName { get; set; }
       // public string LocationDescription { get; set; }
        public string LocationCode { get; set; }
        public string City { get; set; }
        public string Province { get; set; }
        public string PostalCode { get; set; }
        public string ZipCode { get; set; }
    }
}

