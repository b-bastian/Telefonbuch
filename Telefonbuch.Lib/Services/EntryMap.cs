using CsvHelper.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Telefonbuch.Lib.Models;

namespace Telefonbuch.Lib.Services
{
    public class EntryMap : ClassMap<Entry>
    {
        public EntryMap()
        {
            Map(m => m.Id).Index(0).Name("id");
            Map(m => m.Firstname).Index(1).Name("firstname");
            Map(m => m.Lastname).Index(2).Name("lastname");
            Map(m => m.Adress).Index(3).Name("adress");
            Map(m => m.Number).Index(4).Name("number");
            Map(m => m.PLZ).Index(5).Name("postalcode");
            Map(m => m.Place).Index(6).Name("place");
        }
    }
}
