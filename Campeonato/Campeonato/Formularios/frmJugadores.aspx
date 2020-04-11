<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmJugadores.aspx.cs" Inherits="Campeonato.Formularios.frmJugadores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="lbNuevoJugador" runat="server" Text="Ingresar Nuevo Jugador:"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lbnombre" runat="server" Text="Nombre:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtnombre" runat="server" ControlToValidate="txtnombre" ErrorMessage="*Valor Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="revtxtnombre" runat="server" ControlToValidate="txtnombre" ErrorMessage="*Ingresar unicamente letras*" Font-Size="Small" ForeColor="Red" ValidationExpression="[^A-Za-z]"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="lbprimerapellido" runat="server" Text="Primer Apellido:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtapellido1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvapellido1" runat="server" ControlToValidate="txtapellido1" ErrorMessage="*Valor Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbsegundoapellido" runat="server" Text="Segundo Apellido:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtapellido2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtapellido2" runat="server" ControlToValidate="txtapellido2" ErrorMessage="*Valor Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbldentificacion" runat="server" Text="Identificación:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtcedula" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtcedula" runat="server" ControlToValidate="txtcedula" ErrorMessage="*Valor Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbedad" runat="server" Text="Edad:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtedad" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtedad" runat="server" ControlToValidate="txtedad" ErrorMessage="*Valor Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbfechanacimiento" runat="server" Text="Fecha Nacimiento:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtfechanacimiento" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtfechanacimiento" runat="server" ControlToValidate="txtfechanacimiento" ErrorMessage="*Valor Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbtelefonop" runat="server" Text="Teléfono Principal:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txttel1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxttel1" runat="server" ControlToValidate="txttel1" ErrorMessage="*Valor Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbtelefonosecundario" runat="server" Text="Teléfono Secundario:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txttel2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxttel2" runat="server" ControlToValidate="txttel2" ErrorMessage="*Valor Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbcorreo" runat="server" Text="Correo Electrónico:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxemail" runat="server" ControlToValidate="txtedad" ErrorMessage="*Valor Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbidprovincia" runat="server" Text="Provincia:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlprovincia" runat="server" Height="16px" Width="135px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lbidcanton" runat="server" Text="Cantón:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlcanton" runat="server" Height="16px" Width="141px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lbid_distrito" runat="server" Text="Distrito:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddldistrito" runat="server" Height="17px" Width="142px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lbgenero" runat="server" Text="Género:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtgenero" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtgenero" runat="server" ControlToValidate="txtgenero" ErrorMessage="*Valor Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbdireccion" runat="server" Text="Dirección exacta:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtdireccion" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtdireccion" runat="server" ControlToValidate="txtdireccion" ErrorMessage="*Valor Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Button ID="btnnuevojugador" runat="server" Text="Aceptar" />
            <br />
            <br />
            <asp:HyperLink ID="hplinicio" runat="server" NavigateUrl="~/Formularios/frmInicio.aspx">Volver</asp:HyperLink>
        </div>
    </form>
</body>
</html>
