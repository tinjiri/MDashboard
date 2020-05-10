using System;
using System.Collections.Generic;
using System.Text;
using MDashboard.Domain.Common;

namespace MDashboard.Domain.Entities
{
    public class Department : AuditEntity
    {
        public int DepartmentId { get; set; }
        public string DepartmentName { get; set; }
        public string DepartmentDescription { get; set; }
        public string DepartmentCode { get; set; }
        public int LocationId { get; set; }
        public ICollection<Employee> Employees { get; set; }
    }
}


