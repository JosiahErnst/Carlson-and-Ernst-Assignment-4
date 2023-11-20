<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="C_and_E_KarateSchoolApp.Administrator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        Members:<asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
    <p>
        Add new member:</p>
    <p>
        Username:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        Password:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        First Name:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        Last Name:
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <p>
        Phone number:
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </p>
    <p>
        Email:
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </p>
    <p>
        Section:
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="1">Karate Age-Uke</asp:ListItem>
            <asp:ListItem Value="2">Karate Chudan-Uke</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        InstructorId:
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        Instructors:</p>
    <p>
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
