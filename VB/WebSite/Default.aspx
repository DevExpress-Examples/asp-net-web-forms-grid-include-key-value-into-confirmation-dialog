<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="Customize_Confirm_Delete" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to include a deleted row KeyField value into the delete confirmation dialog
	</title>
	<script type="text/javascript">
		function OnLinkClick(id, visibleIndex) {
			if (confirm('Do you wish to delete row with ID = ' + id + '?'))
				ASPxGridView1.DeleteRow(visibleIndex);
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/pubs.mdb"
			SelectCommand="SELECT * FROM [jobs]" DeleteCommand="DELETE FROM [jobs] WHERE [job_id] = ?"
			InsertCommand="INSERT INTO [jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (?, ?, ?, ?)"
			UpdateCommand="UPDATE [jobs] SET [job_desc] = ?, [min_lvl] = ?, [max_lvl] = ? WHERE [job_id] = ?">
			<DeleteParameters>
				<asp:Parameter Name="job_id" Type="Int16" />
			</DeleteParameters>
			<UpdateParameters>
				<asp:Parameter Name="job_desc" Type="String" />
				<asp:Parameter Name="min_lvl" Type="Byte" />
				<asp:Parameter Name="max_lvl" Type="Byte" />
				<asp:Parameter Name="job_id" Type="Int16" />
			</UpdateParameters>
			<InsertParameters>
				<asp:Parameter Name="job_id" Type="Int16" />
				<asp:Parameter Name="job_desc" Type="String" />
				<asp:Parameter Name="min_lvl" Type="Byte" />
				<asp:Parameter Name="max_lvl" Type="Byte" />
			</InsertParameters>
		</asp:AccessDataSource>
		<dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" ClientInstanceName="ASPxGridView1"
			AutoGenerateColumns="False" DataSourceID="AccessDataSource1" KeyFieldName="job_id"
			Width="845px" OnRowDeleting="ASPxGridView1_RowDeleting">
			<Columns>
				<dxwgv:GridViewDataTextColumn FieldName="job_id" ReadOnly="True" VisibleIndex="0">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="job_desc" VisibleIndex="1">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="min_lvl" VisibleIndex="2">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="max_lvl" VisibleIndex="3">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn Name="Delete" VisibleIndex="5">
					<DataItemTemplate>
						<a id="DeleteButton" href="javascript:OnLinkClick(<%#Container.KeyValue.ToString()%>, <%#Container.VisibleIndex.ToString()%>);">
							Delete</a>
					</DataItemTemplate>
				</dxwgv:GridViewDataTextColumn>
			</Columns>
		</dxwgv:ASPxGridView>
	</div>
	</form>
</body>
</html>