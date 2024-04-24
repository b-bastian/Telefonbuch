using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using Telefonbuch.Lib.Interfaces;
using Telefonbuch.Lib.Models;

namespace Telefonbuch.Lib.Services
{
    public class XmlRepository : IRepository
    {
        XElement _rootElement;
        private string _file;

        public XmlRepository(string file)
        {
            this._file = file;

            if(File.Exists(file))
            {
                this._rootElement = XElement.Load(file);
            } else
            {
                this._rootElement = new XElement("adressbook");
            }
        }

        public bool CreateEntry(Entry entry)
        {
            try
            {
                XElement node = new XElement("entry");

                var idElement = new XAttribute("id", entry.Id);
                node.Add(idElement);

                var firstNameElement = new XAttribute("firstname", entry.Firstname);
                node.Add(firstNameElement);

                var lastNameElement = new XAttribute("lastname", entry.Lastname);
                node.Add(lastNameElement);

                var adressElement = new XAttribute("adress", entry.Adress);
                node.Add(adressElement);

                var plzElement = new XAttribute("plz", entry.PLZ);
                node.Add(plzElement);

                var placeElement = new XAttribute("place", entry.Place);
                node.Add(placeElement);

                var numberElement = new XAttribute("number", entry.Number);
                node.Add(numberElement);

                var favoriteElement = new XAttribute("favorite", entry.Favorite);
                node.Add(favoriteElement);

                this._rootElement.Add(node);

                return this.Save();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"XmlRepository, CreateEntry: {ex.Message}");
                return false;
            }
        }

        public bool Save()
        {
            try
            {
                this._rootElement.Save(this._file);
                return true;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"XmlRepository, Save: {ex.Message}");
                return false;
            }
        }

        public bool DeleteEntry(Entry entry)
        {
            try
            {
                var itemsDel = (from del in this._rootElement.Descendants("entry")
                                where del.Attribute("number").Value == entry.Number
                                select del).FirstOrDefault();

                itemsDel.Remove();

                return this.Save();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"XmlRepository, DeleteEntry: {ex.Message}");
                return false;
            }
                    
        }

        public List<Entry> LoadEntries()
        {
            try
            {
                var entries = from entry in this._rootElement.Descendants("entry")
                              select new Entry(
                                  (string)entry.Attribute("firstname"),
                                  (string)entry.Attribute("lastname"),
                                  (string)entry.Attribute("adress"),
                                  (int)entry.Attribute("plz"),
                                  (string)entry.Attribute("place"),
                                  (string)entry.Attribute("number"),
                                  (bool)entry.Attribute("favorite")
                              );

                return entries.ToList<Entry>();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"XmlRepository, UpdateEntry: {ex.Message}");
                return null;
            }
        }

        public bool UpdateEntry(Dictionary<string, string> updatedValues, Entry selectedEntry)
        {
            try
            {
                var updateObjects = from x in this._rootElement.Descendants("entry")
                                    where (string)x.Attribute("number") == selectedEntry.Number
                                    select x;

                Debug.WriteLine(selectedEntry.Number);
                Debug.WriteLine(updateObjects);

                if(!updateObjects.Any()) return false;

                foreach (var updateObject in updateObjects)
                {
                    foreach (var kvp in updatedValues)
                    {
                        updateObject.SetAttributeValue(kvp.Key, kvp.Value);
                    }
                }

                return this.Save();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"XmlRepository, UpdateEntry: {ex.Message}");
                return false;
            }
        }
    }
}
