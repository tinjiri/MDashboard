using System;
using System.Collections.Generic;
using System.Linq;
using MDashboard.DataAccess;
using MDashboard.Domain.Abstract;
using MDashboard.Domain.Entities;

namespace MDashboard.Services
{
    public class LookupService : ILookupService
    {
        private DashboardContext context;
        public LookupService(DashboardContext context)
        {
            this.context = context;
        }

        public IQueryable<Department> GetDepartments()
        {
            return context.Departments;
        }

        public IQueryable<JobStatus> GetJobStatuses()
        {
            return context.JobStatuses;
        }

        public IQueryable<Location> GetLocations()
        {
            return context.Locations;
        }

        public IQueryable<Priority> GetPriorities()
        {
            return context.Priorities;
        }

        public IQueryable<Title> GetTitles()
        {
            return context.Titles;
        }
    }
}
