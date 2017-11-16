using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo_Native_PBI_Embedded
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void linkDELL_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void linkHat_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DellReport.aspx");
        }

        //protected void linkHat_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/DellReport.aspx");
        //}

        //protected void linkDELL_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/Default.aspx");
        //}
    }
}