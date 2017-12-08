<%@ Page Title="4E Efectividad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Efectividad.aspx.cs" Inherits="Demo_Native_PBI_Embedded.Efectividad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script src="Scripts/powerbi.js"></script>
    <script type="text/javascript">
        window.onload = function () {
            var accessToken = document.getElementById('MainContent_accessToken').value;

            SetActive('Efectividad');

            if (!accessToken || accessToken == "") {
                return;
            }

            var embedUrl = document.getElementById('MainContent_embedurl').value;
            var reportId = document.getElementById('MainContent_ReportId').value;

            var config = {
                type: 'report',
                accessToken: accessToken,
                embedUrl: embedUrl,
                id: reportId,
                settings: {
                    filterPaneEnabled: false,
                    navContentPaneEnabled: false
                }
            };

            // Grab the reference to the div HTML element that will host the report.
            var reportContainer = document.getElementById('reportContainer');

            // Embed the report and display it within the div container.
            var report = powerbi.embed(reportContainer, config);

            // Report.on will add an event handler which prints to Log window.
            report.on("loaded", function () {
                //var logView = document.getElementById('logView');
                //logView.innerHTML = logView.innerHTML + "Loaded<br/>";


                // Report.off removes a given event handler if it exists.
                //report.off("loaded");
            });

            // Report.on will add an event handler which prints to Log window.
            report.on("rendered", function () {
                //var logView = document.getElementById('logView');
                //logView.innerHTML = logView.innerHTML + "Rendered<br/>";

                //report.off("rendered");
            });
        };

    </script>

    <asp:HiddenField ID="accessToken" runat="server" />
    <asp:HiddenField ID="embedurl" runat="server" />
    <asp:HiddenField ID="ReportId" runat="server" />
    <asp:HiddenField ID="Reportes" runat="server" />

    <%--<h4 id="titulo" runat="server" style="display:none"></h4>--%>
    <div style="width:100%;height:100%;position:fixed;top:70px;">
        <div style="float:left;height:100%;width:80%;">
            <div ID="reportContainer"></div>
        </div>
            
        <div class="menuLateral">
            <div style="padding: 10px;">
                <center>
                    <p><span class="glyphicon glyphicon-th-large"> - </span> Minuatura de dashboards</p>
                    <hr style="color:#808080; box-shadow: 1px 2px 0px rgba(0, 0, 0, .5);"/>
                    <div class="row">
                        <div class="col-xs-offset-1 col-xs-10 col-md-10">
                            <a href="Default.aspx" class="thumbnail">
                                <img src="Images/MainMenu.jpg" alt="...">
                                <p>Menú principal</p>
                            </a>                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-offset-1 col-xs-10 col-md-10">
                            <a href="javascript:colocaPagina('ReportSectionb18a5491c34b5ba0eac2')" class="thumbnail">
                                <img src="Images/Efectividad.jpg" alt="...">
                                <p>Efectividad de vista</p>
                            </a>                            
                        </div>

                        <div class="col-xs-offset-1 col-xs-10 col-md-10">
                            <a href="javascript:colocaPagina('ReportSection52181d8cb2dbc6c7809d')" class="thumbnail">
                                <img src="Images/efectividad-tablas.jpg" alt="...">
                                <p>Tablas Efectividad</p>
                            </a>                            
                        </div>

                        <div class="col-xs-offset-1 col-xs-10 col-md-10">
                            <a href="javascript:colocaPagina('ReportSection262231a7fb1d8ba2b4ad')" class="thumbnail">
                                <img src="Images/efectividad-tiemporeal.jpg" alt="...">                                
                                <p>E. Tiempo Real</p>
                            </a>                            
                        </div>
                        <div class="col-xs-offset-1 col-xs-10 col-md-10">
                            <a href="javascript:colocaPagina('ReportSection5089de08cd0b62fb7719')" class="thumbnail">
                                <img src="Images/efectividad-tiempos.jpg" alt="...">                                
                                <p>Tiempos</p>
                            </a>                            
                        </div>
                        <div class="col-xs-offset-1 col-xs-10 col-md-10">
                            <a href="javascript:colocaPagina('ReportSectionf5acbce909e4a21e95b2')" class="thumbnail">
                                <img src="Images/efectividad-distancias.jpg" alt="...">
                                <p>Distancias</p>
                            </a>                            
                        </div>
                    </div>
                </center>
                
            </div>
        </div>
    </div>
</asp:Content>
