using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MDashboard.WebAPI.Models
{
    public class Priority
    {
        public int PriorityId { get; set; }
        public string PriorityDescription { get; set; }
        public string PriorityCode { get; set; }
        public string PriorityColor { get; set; }
    }
}
