
using System;
using System.Collections.Generic;
using System.Text;
using MDashboard.Domain.Common;

namespace MDashboard.Domain.Entities
{
    public class Job : AuditEntity
    {
        public int JobId { get; set; }
        public string JobName { get; set; }
        public string JobNumber { get; set; }
        public string JobDescription { get; set; }
        public string JobCode { get; set; }
        public string Scope { get; set; }
        public DateTime? JobDateIssued { get; set; }
        public DateTime? JobStartDate { get; set; }
        public DateTime? JobEndDate { get; set; }
        public DateTime? JobEstimateDueDate { get; set; }
        public int JobEstimateDurationInHours {get; set;}
        public int JobTypeId { get; set; }
        public int DurationInHours { get; set; }
        public int DurationInDays { get; set; }
        public int JobRequestorId { get; set; }
        public int PriorityId { get; set; }
        public bool Invoiced { get; set; }
    }
}








