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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="SectionName" HeaderText="SectionName" SortExpression="SectionName" />
                <asp:BoundField DataField="MemberFirstName" HeaderText="MemberFirstName" SortExpression="MemberFirstName" />
                <asp:BoundField DataField="MemberLastName" HeaderText="MemberLastName" SortExpression="MemberLastName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KarateSchoolConnectionString %>" ProviderName="<%$ ConnectionStrings:KarateSchoolConnectionString.ProviderName %>" SelectCommand="SELECT Section.SectionName, Member.MemberFirstName, Member.MemberLastName FROM Section INNER JOIN Member ON Section.Member_ID = Member.Member_UserID"></asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
</asp:Content>
