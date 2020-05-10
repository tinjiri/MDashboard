using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MDashboard.Domain.Entities;

namespace MDashboard.Domain.Abstract
{
   public interface  ILookupService
    {
        IQueryable<Title> GetTitles();
    }
}
