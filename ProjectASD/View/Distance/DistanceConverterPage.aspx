<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.Master" AutoEventWireup="true" CodeBehind="DistanceConverterPage.aspx.cs" Inherits="ProjectASD.View.Distance.DistanceConverterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="../Content/Style/DistanceConverter.css" />
    
    <div id="container-fluid">
        <div class="title">
            <h2>Distance Converter</h2>
        </div>
        <div class="body mt-4">
            <div class="upper">
                <h3>Value to convert</h3>
            </div>
            <div class="middle">
                <div class="mt-2">
                    <asp:Label ID="InputMessage" runat="server" Text="Input Number" CssClass="inputMessage"></asp:Label>
                </div>
                <div class="mt-2">
                    <asp:TextBox ID="number" runat="server" CssClass="form-control form-control-sm btn-outline-primary inputNumber" placeholder="Input Number"></asp:TextBox> 
                </div>
                <div class="ddl ddlFrom mt-2">
                    <asp:Label ID="Label1" runat="server" Text="From : "></asp:Label>
                    <asp:DropDownList ID="ddlFrom" runat="server" CssClass="btn btn-outline-primary btn-sm"></asp:DropDownList>
                </div>
                <div class="mt-2">
                    <%-- Change this into swap icon --%>
                    <asp:Button ID="btnSwap" runat="server" Text="Swap" OnClick="btnSwap_Click" CssClass="btnSwap"/>
                </div>
                <div class="ddl ddlFrom mt-2">
                    <asp:Label ID="Label2" runat="server" Text="To : "></asp:Label>
                    <asp:DropDownList ID="ddlTo" runat="server" CssClass="btn btn-outline-primary btn-sm"></asp:DropDownList>
                </div>
                <div class="button mt-5">
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" CssClass="btn btn-secondary"/>
                    <asp:Button ID="btnCalculate" runat="server" Text="Convert" OnClick="btnCalculate_Click" CssClass="btn btn-secondary"/>
                </div>
            </div>
            <div class="lower mt-3 mb-3">
                <asp:Label ID="Label3" runat="server" Text="Answer :" CssClass="text text-upper"></asp:Label>
                <br />
                <asp:Label ID="txtAnswer" runat="server" Text="0" CssClass="text text-lower"></asp:Label>
            </div>
        </div>
     </div>
</asp:Content>
