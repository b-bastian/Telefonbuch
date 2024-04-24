using CsvHelper;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Telefonbuch.Lib.Interfaces;
using Telefonbuch.Lib.Models;

namespace Telefonbuch.Lib.Services
{
    public class CsvRepository : IRepository
    {
        private string _path = string.Empty;
        readonly List<Entry> list = new();

        public CsvRepository(string path)
        {
            this._path = path;

            if (File.Exists(this._path))
            {
                using (var reader = new StreamReader(path))
                using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
                {
                    csv.Context.RegisterClassMap<EntryMap>();
                    csv.Read();
                    csv.ReadHeader();

                    var records = csv.GetRecords<Entry>();
                    this.list = records.ToList();
                }
            }
        }

        public List<Entry> LoadEntries()
        {
            return this.list;
        }

        public bool Save()
        {
            try
            {
                using (var writer = new StreamWriter(this._path))
                using (var csv = new CsvWriter(writer, CultureInfo.InvariantCulture))
                {
                    csv.Context.RegisterClassMap<EntryMap>();

                    csv.WriteHeader<Entry>();
                    csv.NextRecord();

                    foreach (var record in this.list)
                    {
                        csv.WriteRecord(record);
                        csv.NextRecord();
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return false;
            }
        }

        public bool CreateEntry(Entry entry)
        {
            this.list.Add(entry);
            return this.Save();
        }

        public bool DeleteEntry(Entry entry)
        {
            var item = this.list.FirstOrDefault((item) => item.Id == entry.Id);

            if (item != null)
            {
                this.list.Remove(item);
            }

            return this.Save();
        }

        public bool UpdateEntry(Dictionary<string, string> updatedValues, Entry selectedEntry)
        {
            throw new NotImplementedException();
        }
    }
}
