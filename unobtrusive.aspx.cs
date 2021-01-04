using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET45
{
    public partial class unobtrusive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Does additional validation on the server so if the client gets around the front end, the server still checks for it.
            //The validation is done in the web.config and the jquery is in the gloabal asax so it minimizes clutter and repetative 
            //plugins
            //Can set unobtrusive for a particular page
            //Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.WebForms;
        }
    }
}