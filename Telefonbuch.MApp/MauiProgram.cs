using Microsoft.Extensions.Logging;
using Telefonbuch.Core.ViewModels;
using Telefonbuch.MApp.Pages;
using Telefonbuch.Lib.Interfaces;
using System.Xml;
using Telefonbuch.Lib.Services;
using CommunityToolkit.Maui;
using System.Diagnostics;

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
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });

            builder.Services.AddSingleton<MainViewModel>();
            builder.Services.AddSingleton<MainPage>();

            builder.Services.AddSingleton<ManageEntryPage>();
            builder.Services.AddSingleton<ManageEntryViewModel>();

            builder.Services.AddSingleton<AppShell>();

            string path = FileSystem.Current.AppDataDirectory;
            string filename = "data.xml";

            string fullPath = Path.Combine(path, filename);

            Debug.WriteLine($"AppDataDirectory: {fullPath}");

            builder.Services.AddSingleton<IRepository>(new XmlRepository(fullPath));

#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
