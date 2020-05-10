using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MDashboard.Domain.Entities;
using Microsoft.CodeAnalysis.CSharp.Syntax;

namespace MDashboard.WebAPI.Mappers
{
    public static class Mapper
    {
        public static Models.Title Map(this Domain.Entities.Title title)
        {
            return new Models.Title
            {
                TitleId = title.TitleId,
                TitleName= title.TitleName,
                TitleDescription=title.TitleDescription,
                TitleCode =title.TitleCode ,
                TitleAbbreviation=title.TitleAbbreviation
            };
        }

        //public static Domain.Entities.Title Map(this Models.Title Title)
        //{
        //    return new Title();
        //}
    }
}
