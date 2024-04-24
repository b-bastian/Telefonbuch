using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Telefonbuch.Lib.Interfaces;
using Telefonbuch.Lib.Models;

namespace Telefonbuch.Lib.Services
{
    public class DatabaseRepository : IRepository
    {
        string _path = string.Empty;

        public DatabaseRepository(string path)
        {
            this._path = path;
        }

        public bool CreateEntry(Entry entry)
        {
            try
            {
                using (var context = new EntriesContext(this._path))
                {
                    context.Add(entry);
                    context.SaveChanges();
                }

                return true;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"DatabaseRepository, CreateEntry: {ex.Message}");
                return false;
            }
        }

        public bool DeleteEntry(Entry entry)
        {
            try
            {
                using (var context = new EntriesContext(this._path)) {
                    context.Database.ExecuteSqlRaw("DELETE FROM Entries WHERE Number={0}", entry.Number);
                }

                return true;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"DatabaseRepository, DeleteEntry: {ex.Message}");
                return false;
            }
        }

        public List<Entry> LoadEntries()
        {
            try
            {
                using (var context = new EntriesContext(this._path))
                {
                    var entries = context.Entries.FromSql($"SELECT * FROM Entries").ToList();

                    return entries;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"DatabaseRepository, LoadEntries: {ex.Message}");
                return new List<Entry>();
            }
        }

        public bool Save()
        {
            try
            {
                using (var context = new EntriesContext(this._path))
                {
                    context.SaveChanges();
                }

                return true;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"DatabaseRepository, Save: {ex.Message}");
                return false;
            }
        }

        public bool UpdateEntry(Dictionary<string, string> updatedValues, Entry selectedEntry)
        {
            try
            {
                using (var context = new EntriesContext(this._path)) // Replace with your actual DbContext name
                {
                    // Fetch the entity from the database based on the selectedEntry's identifier
                    var entityToUpdate = context.Find<Entry>(selectedEntry.Id); // Replace with your entity type and identifier property

                    if (entityToUpdate == null)
                    {
                        return false; // Entry not found in the database
                    }

                    // Update entity properties based on updatedValues
                    foreach (var kvp in updatedValues)
                    {
                        // Perform validation or mapping as needed for specific property types
                        if (entityToUpdate.GetType().GetProperty(kvp.Key) != null) // Check for property existence
                        {
                            entityToUpdate.GetType().GetProperty(kvp.Key).SetValue(entityToUpdate, kvp.Value);
                        }
                        else
                        {
                            // Handle scenarios where the property might not exist in the database model
                            // (e.g., log a warning or skip the update for that property)
                            Debug.WriteLine($"Property '{kvp.Key}' not found in entity {entityToUpdate.GetType().Name}");
                        }
                    }

                    // Save changes to the database
                    context.SaveChanges();
                    return true;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"DatabaseRepository, UpdateEntry: {ex.Message}");
                return false;
            }
        }
    }
}
