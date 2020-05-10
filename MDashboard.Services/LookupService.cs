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
        public IQueryable<Title> GetTitles()
        {
            //throw new NotImplementedException();
            return context.Titles;
        }
    }
}
