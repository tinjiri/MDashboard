using System;
using System.Collections.Generic;
using System.Text;
using MDashboard.Domain.Common;

namespace MDashboard.Domain.Entities
{
    public class Title : AuditEntity
    {
        public int TitleId { get; set; }
        public string TitleDescription { get; set; }
        public string TitleCode { get; set; }
    }
}