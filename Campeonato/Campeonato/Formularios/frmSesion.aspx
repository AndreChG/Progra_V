<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios/Campeonato.Master" AutoEventWireup="true" CodeBehind="frmSesion.aspx.cs" Inherits="Campeonato.Formularios.frmSesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <div>
            <asp:Label ID="Label1" runat="server" Text="Correo Electrónico"></asp:Label>
            
            <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="rqvCorreoElectronico" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar el correo electrónico"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="rqvContrasena" runat="server" ControlToValidate="txtContrasena" ErrorMessage="Debe ingresar una contraseña"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btAceptar" runat="server" OnClick="btAceptar_Click" Text="Aceptar" />
            <br />
            <br />
            <asp:Label ID="lblResultado" runat="server"></asp:Label>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </div>
 
</asp:Content>
