using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Telefonbuch.Core.Services;

namespace Telefonbuch.MApp.Services
{
    public class AlertService : IAlertService
    {
        public void ShowAlert(string title, string message)
        {
            Application.Current.MainPage.Dispatcher.Dispatch(async () => {
                await ShowAlertAsync(title, message);
            });
        }

        public Task ShowAlertAsync(string title, string message)
        {
            return Application.Current.MainPage.DisplayAlert(title , message, "OK");
        }
    }
}
