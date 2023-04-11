<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="agregarUsuario.aspx.vb" Inherits="ejercicioUnidad2.agregarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Agregar Usuario"></asp:Label>
            <br />
            <table style="width:40%;">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Nombres"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Apellidos"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Nacionalidad"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNacionalidad" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Estado Civil:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="cboEstadoCivil" runat="server">
                            <asp:ListItem>Soltero</asp:ListItem>
                            <asp:ListItem>Casado</asp:ListItem>
                            <asp:ListItem>Separado</asp:ListItem>
                            <asp:ListItem>Union Libre</asp:ListItem>
                            <asp:ListItem>Viudo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Edad"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Correo"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCorreoElectronico" runat="server"></asp:TextBox>
                    </td>

                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Programa"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrograma" runat="server"></asp:TextBox>
                    </td>

                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar Datos" />
            <br />
        </div>
    </form>
</body>
</html>
