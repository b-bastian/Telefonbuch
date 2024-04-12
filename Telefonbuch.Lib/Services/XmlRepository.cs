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
                                where del.Attribute("id").Value == entry.Id
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

        public List<Entry> SearchEntries(string searchText)
        {
            var entries = from entry in this._rootElement.Descendants("entry")
                          select new Entry(
                            (string)entry.Attribute("firstname"),
                            (string)entry.Attribute("lastname"),
                            (string)entry.Attribute("adress"),
                            (int)entry.Attribute("plz"),
                            (string)entry.Attribute("place"),
                            (string)entry.Attribute("number"),
                            (bool)entry.Attribute("favorite"));

            var filteredEntries = entries.Where(x => !string.IsNullOrWhiteSpace(x.Firstname) && x.Firstname.StartsWith(searchText, StringComparison.CurrentCultureIgnoreCase));

            if (filteredEntries == null || filteredEntries.Count() <= 0) filteredEntries = entries.Where(x => !string.IsNullOrWhiteSpace(x.Adress) && x.Adress.StartsWith(searchText, StringComparison.CurrentCultureIgnoreCase));
            else return filteredEntries.ToList();

            if (filteredEntries == null || filteredEntries.Count() <= 0) filteredEntries = entries.Where(x => !string.IsNullOrWhiteSpace(Convert.ToString(x.PLZ)) && Convert.ToString(x.PLZ).StartsWith(searchText, StringComparison.CurrentCultureIgnoreCase));
            else return filteredEntries.ToList();

            if (filteredEntries == null || filteredEntries.Count() <= 0) filteredEntries = entries.Where(x => !string.IsNullOrWhiteSpace(x.Place) && x.Place.StartsWith(searchText, StringComparison.CurrentCultureIgnoreCase));
            else return filteredEntries.ToList();

            if (filteredEntries == null || filteredEntries.Count() <= 0) filteredEntries = entries.Where(x => !string.IsNullOrWhiteSpace(x.Number) && x.Number.StartsWith(searchText, StringComparison.CurrentCultureIgnoreCase));
            else return filteredEntries.ToList();

            return filteredEntries.ToList();
        }

        public List<Entry> SortEntries(string sortText)
        {
            var sortedList = from entry in this._rootElement.Descendants("entry")
                             orderby entry.Attribute(sortText).Value
                             select new Entry(
                                (string)entry.Attribute("firstname"),
                                (string)entry.Attribute("lastname"),
                                (string)entry.Attribute("adress"),
                                (int)entry.Attribute("plz"),
                                (string)entry.Attribute("place"),
                                (string)entry.Attribute("number"),
                                (bool)entry.Attribute("favorite"));

            return sortedList.Distinct().ToList();
        }

        public bool UpdateEntry(Dictionary<string, string> updatedValues, Entry selectedEntry)
        {
            /*
            // Update an entry by phone number
            if (entry.Number != null)
            {
                var updateObjects = from x in this._rootElement.Descendants("adress")
                                    where (string)x.Attribute("number") == entry.Number
                                    select x;

                if (!updateObjects.Any())
                {
                    return false;
                }

                foreach (var updateObject in updateObjects)
                {
                    foreach (var attribute in updateObject.Attributes())
                    {
                        if (attribute.Name != "phoneNumber")
                        {
                            updateObject.SetAttributeValue(valueToUpdate, updatedValue);
                        }
                    }
                }

                this._rootElement.Save(this._file);

                return true;
            }
            // Update entry by Id
            else if (entry.Id != null)
            {
                var updateObjects = from x in this._rootElement.Descendants("adress")
                                    where (string)x.Attribute("id") == entry.Id
                                    select x;

                if (!updateObjects.Any())
                {
                    return false;
                }

                foreach (var updateObject in updateObjects)
                {
                    foreach (var attribute in updateObject.Attributes())
                    {
                        if (attribute.Name != "id")
                        {
                            updateObject.SetAttributeValue(valueToUpdate, updatedValue);
                        }
                    }
                }

                this._rootElement.Save(this._file);

                return true;
            }
            else
            {
                return false;
            }
            */

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
