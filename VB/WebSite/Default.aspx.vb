Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web
Imports DevExpress.Data.Filtering
Imports System.Collections
Imports System.IO

Partial Public Class Customize_Confirm_Delete
	Inherits System.Web.UI.Page

	Protected Sub ASPxGridView1_RowDeleting(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataDeletingEventArgs)
		Throw New InvalidOperationException("Data modifications are not allowed in the online demo")
	End Sub
End Class

