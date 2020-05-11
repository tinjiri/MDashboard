using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MDashboard.WebAPI.Models
{
    public class JobStatus
    {
        public int JobStatusId { get; set; }
        public string JobStatusDescription { get; set; }
        public string JobStatusCode { get; set; }
    }
}
