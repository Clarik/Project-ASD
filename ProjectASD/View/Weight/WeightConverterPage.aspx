<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.Master" AutoEventWireup="true" CodeBehind="WeightConverterPage.aspx.cs" Inherits="ProjectASD.View.Weight.WeightConverterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="title">
        <h2>Weight Converter</h2>
    </div>
    <br />

    <div id="body">
        <h3>Value to convert</h3>
        <div>
            <asp:Label ID="InputMessage" runat="server" Text="Input Number"></asp:Label>
            <br />
            <asp:TextBox ID="number" runat="server" ></asp:TextBox> 
            <br />
            <asp:Label ID="Label1" runat="server" Text="From : "></asp:Label>
            <asp:DropDownList ID="ddlFrom" runat="server"></asp:DropDownList>
            <br />
            <%-- Change this into swap icon --%>
            <asp:Button ID="btnSwap" runat="server" Text="Swap" OnClick="btnSwap_Click"/>
            <br />
            <asp:Label ID="Label2" runat="server" Text="To : "></asp:Label>
            <asp:DropDownList ID="ddlTo" runat="server"></asp:DropDownList>
            <br />
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"/>
            <asp:Button ID="btnCalculate" runat="server" Text="Convert" OnClick="btnCalculate_Click"/>
            <br /> <br />

            <asp:Label ID="Label3" runat="server" Text="Answer"></asp:Label>
            <br />
            <asp:Label ID="txtAnswer" runat="server" Text="0"></asp:Label>

        </div>

    </div>
    
</asp:Content>
