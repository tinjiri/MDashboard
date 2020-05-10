using System;
using System.Collections.Generic;
using System.Text;
using MDashboard.Domain.Common;

namespace MDashboard.Domain.Entities
{
    public class Employee : AuditEntity
    {
        public int EmpId { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string KnownAs { get; set; }
        public string TitleId { get; set; }
        public DateTime? DateOfBirth { get; set; }
         public DateTime? DateOfEngagement { get; set; }
        public int DesignationId { get; set; }
        public int DesignationLevelId { get; set; }
        public int ReportsTo { get; set; }
        public int EmploymentStatusId { get; set; }
        public int DeptId { get; set; }
        public int EmpStatusId { get; set; }
        public Department Department { get; set; }
    }
}





