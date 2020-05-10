using System;
using System.Collections.Generic;
using System.Text;
using MDashboard.Domain.Common;

namespace MDashboard.Domain.Entities
{
    public class DesignationLevel : AuditEntity
    {
        public int DesignationLevelId { get; set; }
        public string DesignationLevelName { get; set; }
        public string DesignationLevelDescription { get; set; }
        public string DesignationLevelCode { get; set; }    
    }
}


