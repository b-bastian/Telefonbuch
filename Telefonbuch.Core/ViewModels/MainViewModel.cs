using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using Microsoft.Maui.Platform;
using Telefonbuch.Core.Messages;
using Telefonbuch.Core.Services;
using Telefonbuch.Lib.Interfaces;
using Telefonbuch.Lib.Models;
using Entry = Telefonbuch.Lib.Models.Entry;

namespace Telefonbuch.Core.ViewModels;

public partial class MainViewModel : ObservableObject
{
    IRepository _repository;
    IAlertService _alertService;

    public MainViewModel(IRepository repository, IAlertService alertService)
    {
        this._repository = repository;
        this._alertService = alertService;

        WeakReferenceMessenger.Default.Register<AddMessage>(this, (r, m) => {
            this.Entries.Add(m.Value);
        });

        WeakReferenceMessenger.Default.Register<DeleteMessage>(this, (r, m) => {
            this.Entries.Remove(m.Value);
        });
    }

    private bool _isLoaded = false;

    [ObservableProperty]
    Entry _selectedEntry = null;

    [ObservableProperty]
    ObservableCollection<Entry> _entries = new();

    [ObservableProperty]
    string _url = "bbastian.xyz";

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
    void SelectionChangedURL()
    {
        this.Url = $"https://bbastian.xyz/phonebook?firstname={this.SelectedEntry.Firstname}" +
                   $"&lastname={this.SelectedEntry.Lastname}" +
                   $"&number={this.SelectedEntry.Number}" +
                   $"&adress={this.SelectedEntry.Adress}" +
                   $"&place={this.SelectedEntry.Place}" +
                   $"&plz={this.SelectedEntry.PLZ}";
    }
}
