using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxGridView;

public partial class _Default : System.Web.UI.Page
{
	protected void grid_Init(object sender, EventArgs e) {
		if (hf.Contains("mode"))
			grid.SettingsEditing.Mode = (Convert.ToInt32(hf["mode"]) == 1 ? GridViewEditingMode.EditForm : GridViewEditingMode.Inline);
	}
}
