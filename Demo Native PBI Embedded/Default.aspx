<%@ Page Title="4E México" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo_Native_PBI_Embedded._Default" %>

<asp:Content ID="BodyContentA" ContentPlaceHolderID="MainContent" runat="server">    
    
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/jquery-1.11.3.min.js"></script>
    <asp:Image ImageUrl="~/Images/image005.png" Width="100%" ID="img1" runat="server" />

    <div style="margin-top: 20px;">
        <div class="container">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="Efectividad.aspx" class="thumbnail text-center">
                        <img src="Images/Efectividad.jpg" alt="...">
                        <h4>Efectividad</h4>
                    </a>
                </div>

                <div class="col-xs-6 col-md-4">
                    <a href="Disponibilidad.aspx" class="thumbnail text-center">
                        <img src="Images/Disponibilidad.jpg" alt="...">
                        <h4>Disponibilidad</h4>
                    </a>
                </div>

                <div class="col-xs-6 col-md-4">
                    <a href="Precio.aspx" class="thumbnail text-center">
                        <img src="Images/Precio.jpg" alt="...">
                        <h4>Precio</h4>
                    </a>
                </div>

                <div class="col-xs-6 col-md-4">
                    <a href="Exhibiciones.aspx" class="thumbnail text-center">
                        <img src="Images/Exhibiciones.jpg" alt="...">
                        <h4>Exhibiciones</h4>
                    </a>
                </div>

                <div class="col-xs-6 col-md-4">
                    <a href="Galeria.aspx" class="thumbnail text-center">
                        <img src="Images/Galeria.jpg" alt="...">
                        <h4>Galeria</h4>
                    </a>
                </div>
            </div>
        </div>
    </div>
    
    
</asp:Content>
