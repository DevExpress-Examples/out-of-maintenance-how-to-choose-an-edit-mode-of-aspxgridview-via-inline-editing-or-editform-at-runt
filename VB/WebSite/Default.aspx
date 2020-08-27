<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>How to choose an edit mode of ASPxGridView via inline editing or EditForm at runtime</title>
	<script language="javascript" type="text/javascript">
		function OnInit(s, e) {
			hf.Set('mode', s.GetValue());
		}
		function OnValueChanged(s, e) {
			hf.Set('mode', s.GetValue());
			if (grid.IsEditing()) 
				grid.PerformCallback();
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxRadioButtonList ID="rblEditMode" runat="server" SelectedIndex="1">
				<Items>
					<dx:ListEditItem Selected="True" Text="Edit Form" Value="1" />
					<dx:ListEditItem Text="Inline" Value="2" />
				</Items>
				<ClientSideEvents Init="OnInit" ValueChanged="OnValueChanged" />
			</dx:ASPxRadioButtonList>
			<dx:ASPxHiddenField ID="hf" runat="server" ClientInstanceName="hf">
			</dx:ASPxHiddenField>
			<dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="sds"
				KeyFieldName="CategoryID" ClientInstanceName="grid" 
				oninit="grid_Init">
				<Columns>
                    <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
					<dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
						<EditFormSettings Visible="False" />
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
					</dx:GridViewDataTextColumn>
				</Columns>
			</dx:ASPxGridView>
			<asp:SqlDataSource ID="sds" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
				SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
			</asp:SqlDataSource>
		</div>
	</form>
</body>
</html>

