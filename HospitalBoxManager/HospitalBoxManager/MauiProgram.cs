using Microsoft.Extensions.Configuration;
using Microsoft.EntityFrameworkCore;
using HospitalBoxManager.Data;
using Microsoft.Extensions.Logging;
using DataLibrary;
using HospitalBoxManager.Services;


namespace HospitalBoxManager
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();

            var config = new ConfigurationBuilder()
                .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
                .Build();

            builder.Configuration.AddConfiguration(config);

            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });

            builder.Services.AddMauiBlazorWebView();

            builder.Services.AddDbContext<HospitalContext>(options =>
                options.UseMySql(
                    config.GetConnectionString("HospitalContext"),
                    new MySqlServerVersion(new Version(8, 0, 0))
                ));

            builder.Services.AddSingleton<DataAccess>(provider =>
            {
                var config = provider.GetRequiredService<IConfiguration>();
                string connStr = config.GetConnectionString("HospitalContext");
                return new DataAccess(connStr);
            });

            builder.Services.AddSingleton<RegistroHoraService>();




#if DEBUG

            builder.Services.AddBlazorWebViewDeveloperTools();
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}

