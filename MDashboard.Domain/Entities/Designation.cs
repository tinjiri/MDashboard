using System;
using System.Collections.Generic;
using System.Text;
using MDashboard.Domain.Common;

namespace MDashboard.Domain.Entities
{
    public class Designation : AuditEntity
    {
        public int DesignationId { get; set; }
        public string DesignationName { get; set; }
        public string DesignationDescription { get; set; }
        public string DesignationCode { get; set; }
        public int DesignationLevelId { get; set; }
    }
}




