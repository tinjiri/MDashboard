using System;
using System.Collections.Generic;
using System.Text;
using MDashboard.Domain.Common;

namespace MDashboard.Domain.Entities
{
    public class Component : AuditEntity
    {
        public int ComponentId { get; set; }
        public string ComponentDescription { get; set; }
        public string ComponentCode { get; set; }
        public bool InStock { get; set; }
    }
}