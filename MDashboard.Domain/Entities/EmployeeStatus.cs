using System;
using System.Collections.Generic;
using System.Text;

namespace MDashboard.Domain.Entities
{
    public class EmployeeStatus
    {
        public int EmployeeStatusId { get; set; }
        public string EmployeeStatusDescription { get; set; }
        public string EmployeeStatusCode { get; set; }

    }
}