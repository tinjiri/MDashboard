using System;

namespace MDashboard.Domain.Common
{
    public class AuditEntity
    {
        public string CreatedBy { get; set; }
        public DateTime? PopulationDate { get; set; }
        public string LastModifiedBy { get; set; }
        public DateTime? ModificationDate { get; set; }
    }
}
