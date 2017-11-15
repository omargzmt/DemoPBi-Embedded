<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Demo_Native_PBI_Embedded.Account.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%;height:100vh;">
        <div style="position: relative;top: 50%;-webkit-transform: translateY(-50%);-ms-transform: translateY(-50%);transform: translateY(-50%);">
            <div class="col-md-offset-3" style="background-color: #160a64; width:50%; color:white;">
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Image ID="img1" runat="server" ImageUrl="~/Images/image003.jpg"/>
                        </td>
                        <td>
                            <div class="form-group row">
                                <div class="col-sm-7 col-sm-offset-4" style="text-align:right; margin-bottom:2em; margin-top:1em;">
                                    <asp:Label ID="lblVersion" runat="server" Text="Versión 9" Font-Bold="true" ForeColor="#666666" Width="100%"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group row" style="margin-top:2em;">
                                <asp:Label ID="lblProyecto" runat="server" Text="Proyecto:" CssClass="col-sm-3 col-form-label"></asp:Label>
                                <div class="col-sm-8">
                                    <asp:DropDownList ID="ddlproy" runat="server" CssClass="form-control-plaintext" Height="25px" Width="100%"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group row">
                                <asp:Label ID="lblusr" runat="server" Text="Usuario:" CssClass="col-sm-3 col-form-label"></asp:Label>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtUsr" runat="server" CssClass="form-control-plaintext" Width="100%"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <asp:Label ID="lblpass" runat="server" Text="Password:" CssClass="col-sm-3 col-form-label"></asp:Label>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="form-control-plaintext" Width="100%"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 col-sm-offset-5">
                                    <asp:Button ID="btnEntrar" runat="server" CssClass="btn btn-default btn-sm" Text="Iniciar sesión" OnClick="btnEntrar_Click" Width="100%"/>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <%--<asp:Image ID="img1" runat="server" ImageUrl="~/Images/image003.jpg" style="margin-left:-15px"/>--%>
        
    </div>
    
    <div class="container" style="display:none;">
        
        <div style="position:absolute; left: 40%; top:10%; display:none;">
            
            

            <div style="border: 1px solid #808080; border-radius: 10px 10px; padding:10px; display:none">
                <div class="row">
                    <div class="form-group col-md-12">
                        
                    </div>
                    <div class="form-group col-md-12">
                        
                    </div>
                </div>
                <div>
                    <center>
                        
                    </center>
                </div>
            </div>
        </div>        
    </div>
</asp:Content>
