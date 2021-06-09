<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ProjectASD.View.HomePage.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="header">
        <h1>Converter</h1>
    </div>

    <div class="body">
        <asp:Button ID="btnWeightConverter" Text="Weight Converter" runat="server" OnClick="btnWeightConverter_Click"/>
        <asp:Button ID="btnDistanceConverter" Text="Distance Converter" runat="server" OnClick="btnDistanceConverter_Click"/>
    </div>

</asp:Content>
