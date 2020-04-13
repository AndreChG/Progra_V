<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmEditarjugadores.aspx.cs" Inherits="Campeonato.Formularios.frmEditarjugadores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbljugadoresactivos" runat="server" CssClass="auto-style1" Text="Lista de Jugadores:"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblnombrebuscar" runat="server" Text="Nombre:"></asp:Label>
&nbsp;<asp:TextBox ID="txtnombrebuscar" runat="server" Height="16px" Width="151px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblapellidobuscar" runat="server" Text="Primer Apellido: "></asp:Label>
            <asp:TextBox ID="txtapellidobuscar" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnbuscar" runat="server" OnClick="btnbuscar_Click" Text="Buscar" />
            <br />
&nbsp;<asp:GridView ID="gvwjugadores" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" Height="319px" OnPageIndexChanging="gvwjugadores_PageIndexChanging" Width="569px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="NOMBRE" HeaderText="Nombre" />
                    <asp:BoundField DataField="APELLIDO1" HeaderText="Primer Apellido" />
                    <asp:BoundField DataField="APELLIDO2" HeaderText="Segundo Apellidos" />
                    <asp:BoundField DataField="IDENTIFICACION" HeaderText="Identificacion" />
                    <asp:BoundField DataField="GENERO" HeaderText="Genero" />
                    <asp:HyperLinkField DataNavigateUrlFields="IDENTIFICACION" DataNavigateUrlFormatString="JugadorModifica.aspx?IDENTIFICACION=[0]" Text="Modificar" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
