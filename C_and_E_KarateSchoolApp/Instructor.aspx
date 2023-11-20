<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Instructor.aspx.cs" Inherits="C_and_E_KarateSchoolApp.Instructor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
    Name:
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
    <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
</p>
<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
</asp:Content>
