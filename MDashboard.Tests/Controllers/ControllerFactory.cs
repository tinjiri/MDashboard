using System;
using System.Collections.Generic;
using System.Text;
using MDashboard.Domain.Abstract;
using MDashboard.WebAPI.Controllers;

namespace MDashboard.Tests.Controllers
{
   public static class ControllerFactory
    {
        private static ILookupService lookupService;
        public static ILookupService LookupService
        {
            get
            {
                if (lookupService == null)
                {
                    //var optionsBuilder = new DbContextOptionsBuilder<DataAccess.PartnerLoansContext>();
                    //optionsBuilder.UseSqlServer(DbConnection);
                    //partnerLoansContext = new DataAccess.PartnerLoansContext(optionsBuilder.Options);

                }
                return lookupService;
            }
        }
        public static LookupController LookupController
        {
            get
            {
                return new LookupController(LookupService);
            }
        }
    }
}
