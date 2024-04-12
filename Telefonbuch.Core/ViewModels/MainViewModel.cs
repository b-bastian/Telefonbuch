using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Telefonbuch.Lib.Interfaces;
using Telefonbuch.Lib.Models;
using Entry = Telefonbuch.Lib.Models.Entry;

namespace Telefonbuch.Core.ViewModels;

public partial class MainViewModel(IRepository repository) : ObservableObject
{
    IRepository _repository = repository;
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
}
