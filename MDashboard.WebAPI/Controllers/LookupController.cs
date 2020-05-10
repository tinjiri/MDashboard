using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MDashboard.Domain.Abstract;
using MDashboard.WebAPI.Mappers;
using MDashboard.WebAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MDashboard.WebAPI.Controllers
{
    /// <summary>
    /// Lookup api to retrieve the lookups used by dashboard.
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class LookupController : ControllerBase
    {
        private ILookupService lookupService;
        public LookupController(ILookupService lookupService)
        {
            this.lookupService = lookupService;
        }

        /// <summary>
        /// returns Title lookupdata
        /// </summary>
        /// <returns></returns>
        [HttpGet("lookupdata")]
        //[ProducesResponseType(200)]

        public ActionResult<LookupDataSet> GetLookupData()
        {
            LookupDataSet lookupDataSet = new LookupDataSet();
            lookupDataSet.Titles = lookupService.GetTitles().Select(x => x.Map()).ToArray();

            // return lookupService.GetTitles().Select(x => x.Map()).ToList();
            return lookupDataSet;
        }
    }
}