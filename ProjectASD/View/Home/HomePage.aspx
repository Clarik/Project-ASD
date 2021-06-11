<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ProjectASD.View.HomePage.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="../Content/Style/Home.css" />
 
    <div class="container mt-5">
        <div class="jumbotron">
            <h1 class="display-4">Basic Converter App</h1>
            <p class="lead">
                This website is a simple converter application that can handle  
                two major measurements: <b>Weight</b> and <b>Distance</b>.
            </p>
            <hr />
            <h2>How to Use the Apps</h2>
            <ol class="ol-guides">
                <li>
                    Choose the measurement to be converted
                </li>
                <div class="form-group">
                    <asp:Button ID="ButtonWeightConverter" CssClass="btn btn-primary" OnClick="ButtonWeightConverter_Click" runat="server" Text="Weight" />
                    or
                    <asp:Button ID="ButtonDistanceConverter" CssClass="btn btn-info" OnClick="ButtonDistanceConverter_Click" runat="server" Text="Distance" />
                </div>
                <li>
                    Input the initial number to be converted
                </li>
                <div class="form-group">
                    <asp:Label ID="InputMessage" runat="server" Text="Input Number (EXAMPLE ONLY)"></asp:Label>
                    <asp:TextBox ID="number" CssClass="form-control" runat="server" disabled>20</asp:TextBox> 
                </div>
                <li>
                    Define the initial number's unit (From unit)
                </li>
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="From : (EXAMPLE ONLY)"></asp:Label>
                    <asp:DropDownList ID="ddlFrom" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                <li>
                    Choose a unit that the initial number should be converted to (To unit)
                </li>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="To : (EXAMPLE ONLY)"></asp:Label>
                    <asp:DropDownList ID="ddlTo" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                <li>
                    Click the Convert button
                </li>
                <span>(EXAMPLE ONLY)</span>
                <div class="form-group">
                    <button class="btn btn-outline-dark">Convert</button>
                </div>
                <li>
                    The answer is located at the very bottom with label "Answer"
                </li>
                <span>(EXAMPLE ONLY)</span>
                <div class="shadow-sm p-2 pl-3 mb-4 bg-white rounded">
                    Answer 15
                </div>
            </ol>
            <hr />
            <h3>Additional Guide</h3>
            <ul class="ul-additionals">
                <li>Click the Swap logo if you want to swap the "From unit" to "To unit"</li>
                <div class="form-group"></div>
                <li>Click the Clear button if you want to reset all the fields to default</li>
                <span>(EXAMPLE ONLY)</span>
                <div class="form-group">
                    <button class="btn btn-outline-dark">Clear</button>
                </div>
            </ul>
        </div>
    </div>
</asp:Content>
