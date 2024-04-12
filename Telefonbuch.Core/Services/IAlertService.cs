using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Telefonbuch.Core.Services
{
    public interface IAlertService
    {
        void ShowAlert(string title, string message);

        // TODO: entfernen wenn nicht in gebrauch
        Task ShowAlertAsync(string title, string message);
    }
}
