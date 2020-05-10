using System;
using System.Collections.Generic;
using System.Text;

namespace MDashboard.Domain.Entities
{
    public class EmploymentStatus
    {
        public int EmploymentStatusId { get; set; }
        public string EmploymentStatusDescription { get; set; }
        public string EmploymentStatusCode { get; set; }

    }
}