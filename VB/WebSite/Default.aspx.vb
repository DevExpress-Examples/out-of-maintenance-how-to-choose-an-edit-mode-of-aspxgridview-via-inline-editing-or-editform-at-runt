Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxGridView

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub grid_Init(ByVal sender As Object, ByVal e As EventArgs)
		If hf.Contains("mode") Then
			If (Convert.ToInt32(hf("mode")) = 1) Then
				grid.SettingsEditing.Mode = GridViewEditingMode.EditForm
			Else
				grid.SettingsEditing.Mode = GridViewEditingMode.Inline
			End If
		End If
	End Sub
End Class
