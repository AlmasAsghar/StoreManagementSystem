using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(StoreManagementSystem.Startup))]
namespace StoreManagementSystem
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
