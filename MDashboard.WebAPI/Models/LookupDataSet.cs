using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MDashboard.Domain.Entities;

namespace MDashboard.WebAPI.Models
{
    public class LookupDataSet
    {
        public Title[] Titles { get; set; }
        public Location[] Locations { get; set; }
        public Department[] Departments { get; set; }
        public JobStatus[] JobStatuses { get; set; }
        public Priority[] Priorities { get; set; }
    }
}
