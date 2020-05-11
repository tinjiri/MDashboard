using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MDashboard.Domain.Entities;
using Microsoft.CodeAnalysis.CSharp.Syntax;

namespace MDashboard.WebAPI.Mappers
{
    public static class LookupMapper
    {
        public static Models.Title Map(this Domain.Entities.Title title)
        {
            return new Models.Title
            {
                TitleId = title.TitleId,
               // TitleName = title.TitleName,
                TitleDescription = title.TitleDescription,
                TitleCode = title.TitleCode,
              //  TitleAbbreviation = title.TitleAbbreviation
            };
        }

        public static Models.Location Map(this Domain.Entities.Location location)
        {
            return new Models.Location
            {
                LocationId = location.LocationId,
                LocationName = location.LocationName,
                //LocationDescription = location.LocationDescription,
                LocationCode = location.LocationCode,
                City = location.City,
                Province = location.Province,
                PostalCode = location.PostalCode,
                //ZipCode 
            };
        }

        public static Models.Department Map(this Domain.Entities.Department department)
        {
            return new Models.Department
            {
                DepartmentId = department.DepartmentId,
                DepartmentName = department.DepartmentName,
               // DepartmentDescription = department.DepartmentDescription,
                DepartmentCode = department.DepartmentCode,
                LocationId = department.LocationId               
            };
        }

        public static Models.JobStatus Map(this Domain.Entities.JobStatus jobStatus)
        {
            return new Models.JobStatus
            {
                JobStatusId = jobStatus.JobStatusId,
                JobStatusDescription = jobStatus.JobStatusDescription,
                JobStatusCode = jobStatus.JobStatusCode           
            };
        }


        public static Models.Priority Map(this Domain.Entities.Priority priority)
        {
            return new Models.Priority
            {
                PriorityId = priority.PriorityId,
                PriorityCode = priority.PriorityCode,
                PriorityDescription = priority.PriorityDescription,
                PriorityColor = priority.PriorityColor
            };
        }

        //public static Domain.Entities.Title Map(this Models.Title Title)
        //{
        //    return new Title();
        //}
    }
}
