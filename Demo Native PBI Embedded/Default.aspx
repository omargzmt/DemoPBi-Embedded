<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo_Native_PBI_Embedded._Default" %>

<asp:Content ID="BodyContentA" ContentPlaceHolderID="MainContent" runat="server">    
    <script type="text/javascript" src="Scripts/powerbi.js"></script>
    <script type="text/javascript">
        window.onload = function () {
            var accessToken = document.getElementById('MainContent_accessToken').value;

            if (!accessToken || accessToken == "")
            {
                return;
            }

            var embedUrl = document.getElementById('MainContent_embedurl').value;
            var reportId = document.getElementById('MainContent_ReportId').value;
            
            var config= {
                type: 'report',
                accessToken: accessToken,
                embedUrl: embedUrl,
                id: reportId,
                settings: {
                    filterPaneEnabled: false,
                    navContentPaneEnabled: true
                }
            };

            // Grab the reference to the div HTML element that will host the report.
            var reportContainer = document.getElementById('reportContainer');

            // Embed the report and display it within the div container.
            var report = powerbi.embed(reportContainer, config);

            // Report.on will add an event handler which prints to Log window.
            report.on("loaded", function () {
                var logView = document.getElementById('logView');
                logView.innerHTML = logView.innerHTML + "Loaded<br/>";

                // Report.off removes a given event handler if it exists.
                report.off("loaded");
            });

            // Report.on will add an event handler which prints to Log window.
            report.on("rendered", function () {
                var logView = document.getElementById('logView');
                logView.innerHTML = logView.innerHTML + "Rendered<br/>";

                // Report.off removes a given event handler if it exists.
                report.off("rendered");
            });
        };

    </script>

    <asp:HiddenField ID="accessToken" runat="server" />
    <asp:HiddenField ID="embedurl" runat="server" />
    <asp:HiddenField ID="ReportId" runat="server" />

    <%--<h4 id="titulo" runat="server" style="display:none"></h4>--%>

    <div id="divContainer" class="embed-responsive">
        <div ID="reportContainer" class="embed-responsive-item"></div>
    </div>

</asp:Content>
