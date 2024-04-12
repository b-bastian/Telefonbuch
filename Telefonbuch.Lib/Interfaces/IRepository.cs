using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Telefonbuch.Lib.Models;

namespace Telefonbuch.Lib.Interfaces;

public interface IRepository
{
    List<Entry> LoadEntries();

    bool Save();

    bool CreateEntry(Entry entry);

    bool DeleteEntry(Entry entry);

    bool UpdateEntry(Dictionary<string, string> updatedValues, Entry selectedEntry);

    bool Update(Entry entry);

    List<Entry> SearchEntries(string searchText);

    List<Entry> SortEntries(string sortText);
}
