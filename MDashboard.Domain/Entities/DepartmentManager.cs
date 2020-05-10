using System;
using System.Collections.Generic;
using System.Text;
using MDashboard.Domain.Common;

namespace MDashboard.Domain.Entities
{
    public class DepartmentManager : AuditEntity
    {
        public int DepartmentManagerId { get; set; }
        public int DepartmentId { get; set; }
        public int EmployeeId { get; set; }
        public int DesignationLevelId { get; set; }

        public int LocationId { get; set; }
    }
}






