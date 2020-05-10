using System;
using System.Collections.Generic;
using System.Text;

namespace MDashboard.Domain.Entities
{
    public class JobStatus
    {
        public int JobStatusId { get; set; }
        public string JobStatusDescription { get; set; }
        public string JobStatusCode { get; set; }

    }
}