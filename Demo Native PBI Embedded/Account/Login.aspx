<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Demo_Native_PBI_Embedded.Account.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div style="position:absolute; left: 40%; top:10%;">
            <div style="padding-bottom:10px;">
                <center>
                    <asp:Image ID="img1" runat="server" ImageUrl="~/Images/icon1.png" Width="50"/>
                    <h3>Power BI Demo</h3>
                </center>
            </div>

            <div style="border: 1px solid #808080; border-radius: 10px 10px; padding:10px">
                <div class="row">
                    <div class="form-group col-md-12">
                        <asp:Label ID="lblusr" runat="server" Text="Usuario:"></asp:Label>
                        <asp:TextBox ID="txtUsr" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-12">
                        <asp:Label ID="lblpass" runat="server" Text="Password:"></asp:Label>
                        <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <center>
                        <asp:Button ID="btnEntrar" runat="server" CssClass="btn btn-gris" Text="Entrar" OnClick="btnEntrar_Click"/>
                    </center>
                </div>
            </div>
        </div>        
    </div>
</asp:Content>
