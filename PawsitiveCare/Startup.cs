using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PawsitiveCare.Startup))]
namespace PawsitiveCare
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
