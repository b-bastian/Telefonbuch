using Microsoft.Extensions.Logging;
using Telefonbuch.Core.ViewModels;
using Telefonbuch.MApp.Pages;
using Telefonbuch.Lib.Interfaces;
using System.Xml;
using Telefonbuch.Lib.Services;
using CommunityToolkit.Maui;
using System.Diagnostics;
using CommunityToolkit.Maui.Core;
using Telefonbuch.Core.Services;
using Telefonbuch.MApp.Services;
using Syncfusion.Maui.Core.Hosting;

namespace Telefonbuch.MApp
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .UseMauiCommunityToolkit()
                .ConfigureSyncfusionCore()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });


            // mainpage & mainviewmodel
            builder.Services.AddSingleton<MainViewModel>();
            builder.Services.AddSingleton<MainPage>();

            // manageentry & manageentryviewmodel
            builder.Services.AddSingleton<ManageEntryPage>();
            builder.Services.AddSingleton<ManageEntryViewModel>();

            // appshell
            builder.Services.AddSingleton<AppShell>();

            // file name & path for xmlrepository
            #region xmlrepository
            /*
            string path = FileSystem.Current.AppDataDirectory;
            string filename = "data.xml";

            string fullPath = Path.Combine(path, filename);

            Debug.WriteLine($"AppDataDirectory: {fullPath}");

            builder.Services.AddSingleton<IRepository>(new XmlRepository(fullPath));
            */
            #endregion

            // file for databaserepository
            #region databaserepository
            string path = FileSystem.Current.AppDataDirectory;
            string filename = "vcxvcxvcx.xml";

            string fullPath = Path.Combine(path, filename);

            Debug.WriteLine($"AppDataDirectory: {fullPath}");

            builder.Services.AddSingleton<IRepository>(new XmlRepository(fullPath));
            #endregion

            // alerts
            builder.Services.AddSingleton<IAlertService, AlertService>();

            // syncfusion licensing
            Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense("Ngo9BigBOggjHTQxAR8/V1NAaF1cVGhNYVJ1WmFZfVpgd19EY1ZTQWYuP1ZhSXxXdkZiUX9YdHZRR2leVkc=");

#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
