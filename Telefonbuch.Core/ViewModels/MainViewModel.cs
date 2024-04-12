using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Maui.Platform;
using Telefonbuch.Core.Services;
using Telefonbuch.Lib.Interfaces;
using Telefonbuch.Lib.Models;
using Entry = Telefonbuch.Lib.Models.Entry;

namespace Telefonbuch.Core.ViewModels;

public partial class MainViewModel(IRepository repository, IAlertService alertService) : ObservableObject
{
    IRepository _repository = repository;
    IAlertService _alertService = alertService;

    private bool _isLoaded = false;

    [ObservableProperty]
    Entry _selectedEntry = null;

    [ObservableProperty]
    ObservableCollection<Entry> _entries = new();

    [RelayCommand]
    void LoadData()
    {
        if (!this._isLoaded)
        {
            var entries = this._repository.LoadEntries();

            foreach (var entry in entries)
            {
                this.Entries.Add(entry);
            }

            this._isLoaded = true;
        }
    }

    [RelayCommand]
    void ToggleFavorite(Entry entry)
    {
        Debug.WriteLine("togglefavorite angekommen");

        entry.Favorite = !entry.Favorite;

        var result = this._repository.Update(entry);

        if(result)
        {
            Debug.WriteLine("result");

            int pos = this.Entries.IndexOf(entry);

            if (pos != -1)
            {
                this.Entries[pos] = entry;

                this._alertService.ShowAlert("Successful", "The contact was saved in your favorites!");
            }
            else {
                this._alertService.ShowAlert("Error", "The contact could not be added to your favorites");
            }
            
        }
    }
}
