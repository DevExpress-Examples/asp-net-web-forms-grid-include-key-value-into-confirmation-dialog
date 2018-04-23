using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxTabControl;
using DevExpress.Web.ASPxEditors;
using DevExpress.Web.ASPxGridView;
using DevExpress.Data.Filtering;
using System.Collections;
using System.IO;

public partial class Customize_Confirm_Delete : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
     {
     }

    protected void ASPxGridView1_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e) {
        throw new InvalidOperationException("Data modifications are not allowed in the online demo");

    }
}

