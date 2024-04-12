using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Telefonbuch.Lib.Interfaces;
using Telefonbuch.Lib.Models;
using CommunityToolkit.Maui;
using Entry = Telefonbuch.Lib.Models.Entry;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Xml.Linq;
using CommunityToolkit.Maui.Converters;

namespace Telefonbuch.Core.ViewModels;

public partial class ManageEntryViewModel(IRepository repository) : ObservableObject
{
    IRepository _repository = repository;

    [ObservableProperty]
    ObservableCollection<Entry> _entries = new();

    [ObservableProperty]
    string _feedback = string.Empty;

    #region Create Entry Properties
    [ObservableProperty]
    string _firstname = string.Empty;

    [ObservableProperty]
    string _lastname = string.Empty;

    [ObservableProperty]
    string _adress = string.Empty;

    [ObservableProperty]
    int _plz = 0;

    [ObservableProperty]
    string _place = string.Empty;

    [ObservableProperty]
    [NotifyCanExecuteChangedFor(nameof(AddEntryCommand))]
    string _number = string.Empty;

    [ObservableProperty]
    bool _favorite = false;
    #endregion

    #region Update Entry Properties
    [ObservableProperty]
    ObservableCollection<string> entryNames = new();

    [ObservableProperty]
    Entry _selectedItem = new();

    private bool _isLoaded = false;

    [ObservableProperty]
    string _updateFirstname = string.Empty;

    [ObservableProperty]
    string _updateLastname = string.Empty;

    [ObservableProperty]
    string _updateAdress = string.Empty;

    [ObservableProperty]
    int _updatePlz = 0;

    [ObservableProperty]
    string _updatePlace = string.Empty;

    [ObservableProperty]
    string _updateNumber = string.Empty;
    #endregion

    private bool CanAdd => this.Number.Length > 0;

    [RelayCommand(CanExecute = nameof(CanAdd))]
    public void AddEntry()
    {
        string fullName = $"{this.Firstname} {this.Lastname}";

        Entry entry = new(this.Firstname, this.Lastname, this.Adress, this.Plz, this.Place, this.Number, this.Favorite);

        var result = this._repository.CreateEntry(entry);

        Debug.WriteLine(this.Adress);
        Debug.WriteLine(this.Plz);
        Debug.WriteLine(this.Place);
        Debug.WriteLine(this.Number);
        Debug.WriteLine(this.Favorite);

        if(result)
        {
            this.Entries.Add(entry);
            this.EntryNames.Add(this.Firstname);

            this.Feedback = "Entry created successfully!";

            this.Firstname = string.Empty;
            this.Lastname = string.Empty;
            this.Adress = string.Empty;
            this.Plz = 0;
            this.Place = string.Empty;
            this.Number = string.Empty;
        }
    }

    [RelayCommand]
    void Load()
    {
        if (!this._isLoaded)
        {
            var loadedEntries = this._repository.LoadEntries();

            foreach (var entry in loadedEntries)
            {
                this.Entries.Add(entry);
            }

            foreach (var entry in this.Entries)
            {
                this.EntryNames.Add(entry.Firstname);
            }

            this._isLoaded = true;
        }
    }

    [RelayCommand]
    void UpdateOnClick()
    {
        if (!string.IsNullOrEmpty(this.SelectedItem.Firstname))
        {
            var selectedEntry = this.Entries.FirstOrDefault(entry => entry.Firstname == this.SelectedItem.Firstname);

            if (selectedEntry != null)
            {
                this.UpdateFirstname = selectedEntry.Firstname;
                this.UpdateLastname = selectedEntry.Lastname;
                this.UpdateAdress = selectedEntry.Adress;
                this.UpdateNumber = selectedEntry.Number;
                this.UpdatePlace = selectedEntry.Place;
                this.UpdatePlz = selectedEntry.PLZ;
            }
        }
    }

    [RelayCommand]
    void UpdateEntry()
    {
        if (!string.IsNullOrEmpty(this.SelectedItem.Firstname))
        {
            var selectedEntry = this.Entries.FirstOrDefault(entry => entry.Firstname == this.SelectedItem.Firstname);

            if (selectedEntry != null)
            {

                Dictionary<string, string> updatedValues = new()
                {
                    { "id", selectedEntry.Id },
                    { "firstname", this.UpdateFirstname },
                    { "lastname", this.UpdateLastname },
                    { "adress", this.UpdateAdress },
                    { "plz", this.UpdatePlz.ToString() },
                    { "place", this.UpdatePlace },
                    { "number", this.UpdateNumber },
                };

                bool r = this._repository.UpdateEntry(updatedValues, selectedEntry);

                Debug.WriteLine(selectedEntry.Id);
                Debug.WriteLine(selectedEntry.Firstname);
                Debug.WriteLine(selectedEntry.Number);
                Debug.WriteLine(selectedEntry.Adress);
                Debug.WriteLine(selectedEntry.Place);
                Debug.WriteLine(selectedEntry.PLZ);
                Debug.WriteLine(selectedEntry.Number);

                if (r)
                {
                    Debug.WriteLine("ging");
                }
                else
                {
                    Debug.WriteLine("ging nicht");
                }
            }
        }
    }
}
