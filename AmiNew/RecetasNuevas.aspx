<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecetasNuevas.aspx.cs" Inherits="AmiNew.RecetasNuevas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

            table {
                color:blue;
            }
            body {
                background-image:url("images/BackGround11.png")
            }
            h1 {
                text-align:center;
                color:blue;
            }

        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 630px;
        }
        .auto-style3 {
            height: 23px;
            width: 630px;
        }
        .auto-style4 {
            width: 628px;
        }
        .auto-style5 {
            width: 628px;
            height: 23px;
        }
        .auto-style6 {
            width: 200px;
        }
        .auto-style7 {
            height: 23px;
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>Dr.</td>
                <td class="auto-style2">
                    <asp:Label ID="LabelNombre" runat="server"></asp:Label>
&nbsp;<asp:Label ID="LabelApellido" runat="server"></asp:Label>
&nbsp;&nbsp;
                    <asp:Label ID="LabelPrefecion" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelIDDoctor" runat="server" Text="Usuario"></asp:Label>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style3"></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextUsuarioBusqueda" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:Button ID="BotonConfirmar" runat="server" Text="Confirmar" OnClick="BotonConfirmar_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="LabelExito" runat="server" style="color: #f00"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            </table>
    
    </div>
        <div>

            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>Receta para el paciente&nbsp;
                    <asp:Label ID="LabelPacienteSelec" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Medicamento</td>
                    <td>Descripción del fármaco (Opcional)</td>
                    <td>Hora de inicio</td>
                    <td>¿Cada cuánto tiempo? </td>
                    <td>¿Cuantos ciclos?</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextMed1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextDes1" runat="server" Width="321px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropInicio1" runat="server">
                            <asp:ListItem Value="1">7:00 AM</asp:ListItem>
                            <asp:ListItem Value="2">8:00 AM</asp:ListItem>
                            <asp:ListItem Value="3">9:00 AM</asp:ListItem>
                            <asp:ListItem Value="4">10:00 AM</asp:ListItem>
                            <asp:ListItem Value="5">11:00 AM</asp:ListItem>
                            <asp:ListItem Value="6">12:00 AM</asp:ListItem>
                            <asp:ListItem Value="7">1:00 PM</asp:ListItem>
                            <asp:ListItem Value="8">2:00 PM</asp:ListItem>
                            <asp:ListItem Value="9">3:00 PM</asp:ListItem>
                            <asp:ListItem Value="10">4:00 PM</asp:ListItem>
                            <asp:ListItem Value="11">5:00 PM</asp:ListItem>
                            <asp:ListItem Value="12">6:00 PM</asp:ListItem>
                            <asp:ListItem Value="13">7:00 PM</asp:ListItem>
                            <asp:ListItem Value="14">8:00 PM</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropTiempo1" runat="server">
                            <asp:ListItem Value="1">4 Horas</asp:ListItem>
                            <asp:ListItem Value="2">6 Horas</asp:ListItem>
                            <asp:ListItem Value="3">8 Horas</asp:ListItem>
                            <asp:ListItem Value="4">10 Horas</asp:ListItem>
                            <asp:ListItem Value="5">12 Horas</asp:ListItem>
                            <asp:ListItem Value="6">1 Día</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropCiclo1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextMed2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextDes2" runat="server" Width="321px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropInicio2" runat="server">
                            <asp:ListItem Value="1">7:00 AM</asp:ListItem>
                            <asp:ListItem Value="2">8:00 AM</asp:ListItem>
                            <asp:ListItem Value="3">9:00 AM</asp:ListItem>
                            <asp:ListItem Value="4">10:00 AM</asp:ListItem>
                            <asp:ListItem Value="5">11:00 AM</asp:ListItem>
                            <asp:ListItem Value="6">12:00 AM</asp:ListItem>
                            <asp:ListItem Value="7">1:00 PM</asp:ListItem>
                            <asp:ListItem Value="8">2:00 PM</asp:ListItem>
                            <asp:ListItem Value="9">3:00 PM</asp:ListItem>
                            <asp:ListItem Value="10">4:00 PM</asp:ListItem>
                            <asp:ListItem Value="11">5:00 PM</asp:ListItem>
                            <asp:ListItem Value="12">6:00 PM</asp:ListItem>
                            <asp:ListItem Value="13">7:00 PM</asp:ListItem>
                            <asp:ListItem Value="14">8:00 PM</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropTiempo2" runat="server">
                            <asp:ListItem Value="1">4 Horas</asp:ListItem>
                            <asp:ListItem Value="2">6 Horas</asp:ListItem>
                            <asp:ListItem Value="3">8 Horas</asp:ListItem>
                            <asp:ListItem Value="4">10 Horas</asp:ListItem>
                            <asp:ListItem Value="5">12 Horas</asp:ListItem>
                            <asp:ListItem Value="6">1 Día</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropCiclo2" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextMed3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextDes3" runat="server" Width="321px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropInicio3" runat="server">
                            <asp:ListItem Value="1">7:00 AM</asp:ListItem>
                            <asp:ListItem Value="2">8:00 AM</asp:ListItem>
                            <asp:ListItem Value="3">9:00 AM</asp:ListItem>
                            <asp:ListItem Value="4">10:00 AM</asp:ListItem>
                            <asp:ListItem Value="5">11:00 AM</asp:ListItem>
                            <asp:ListItem Value="6">12:00 AM</asp:ListItem>
                            <asp:ListItem Value="7">1:00 PM</asp:ListItem>
                            <asp:ListItem Value="8">2:00 PM</asp:ListItem>
                            <asp:ListItem Value="9">3:00 PM</asp:ListItem>
                            <asp:ListItem Value="10">4:00 PM</asp:ListItem>
                            <asp:ListItem Value="11">5:00 PM</asp:ListItem>
                            <asp:ListItem Value="12">6:00 PM</asp:ListItem>
                            <asp:ListItem Value="13">7:00 PM</asp:ListItem>
                            <asp:ListItem Value="14">8:00 PM</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropTiempo3" runat="server">
                            <asp:ListItem Value="1">4 Horas</asp:ListItem>
                            <asp:ListItem Value="2">6 Horas</asp:ListItem>
                            <asp:ListItem Value="3">8 Horas</asp:ListItem>
                            <asp:ListItem Value="4">10 Horas</asp:ListItem>
                            <asp:ListItem Value="5">12 Horas</asp:ListItem>
                            <asp:ListItem Value="6">1 Día</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropCiclo3" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextMed4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextDes4" runat="server" Width="320px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropInicio4" runat="server">
                            <asp:ListItem Value="1">7:00 AM</asp:ListItem>
                            <asp:ListItem Value="2">8:00 AM</asp:ListItem>
                            <asp:ListItem Value="3">9:00 AM</asp:ListItem>
                            <asp:ListItem Value="4">10:00 AM</asp:ListItem>
                            <asp:ListItem Value="5">11:00 AM</asp:ListItem>
                            <asp:ListItem Value="6">12:00 AM</asp:ListItem>
                            <asp:ListItem Value="7">1:00 PM</asp:ListItem>
                            <asp:ListItem Value="8">2:00 PM</asp:ListItem>
                            <asp:ListItem Value="9">3:00 PM</asp:ListItem>
                            <asp:ListItem Value="10">4:00 PM</asp:ListItem>
                            <asp:ListItem Value="11">5:00 PM</asp:ListItem>
                            <asp:ListItem Value="12">6:00 PM</asp:ListItem>
                            <asp:ListItem Value="13">7:00 PM</asp:ListItem>
                            <asp:ListItem Value="14">8:00 PM</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropTiempo4" runat="server">
                            <asp:ListItem Value="1">4 Horas</asp:ListItem>
                            <asp:ListItem Value="2">6 Horas</asp:ListItem>
                            <asp:ListItem Value="3">8 Horas</asp:ListItem>
                            <asp:ListItem Value="4">10 Horas</asp:ListItem>
                            <asp:ListItem Value="5">12 Horas</asp:ListItem>
                            <asp:ListItem Value="6">1 Día</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropCiclo4" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextMed5" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextDes5" runat="server" Width="321px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropInicio5" runat="server">
                            <asp:ListItem Value="1">7:00 AM</asp:ListItem>
                            <asp:ListItem Value="2">8:00 AM</asp:ListItem>
                            <asp:ListItem Value="3">9:00 AM</asp:ListItem>
                            <asp:ListItem Value="4">10:00 AM</asp:ListItem>
                            <asp:ListItem Value="5">11:00 AM</asp:ListItem>
                            <asp:ListItem Value="6">12:00 AM</asp:ListItem>
                            <asp:ListItem Value="7">1:00 PM</asp:ListItem>
                            <asp:ListItem Value="8">2:00 PM</asp:ListItem>
                            <asp:ListItem Value="9">3:00 PM</asp:ListItem>
                            <asp:ListItem Value="10">4:00 PM</asp:ListItem>
                            <asp:ListItem Value="11">5:00 PM</asp:ListItem>
                            <asp:ListItem Value="12">6:00 PM</asp:ListItem>
                            <asp:ListItem Value="13">7:00 PM</asp:ListItem>
                            <asp:ListItem Value="14">8:00 PM</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropTiempo5" runat="server">
                            <asp:ListItem Value="1">4 Horas</asp:ListItem>
                            <asp:ListItem Value="2">6 Horas</asp:ListItem>
                            <asp:ListItem Value="3">8 Horas</asp:ListItem>
                            <asp:ListItem Value="4">10 Horas</asp:ListItem>
                            <asp:ListItem Value="5">12 Horas</asp:ListItem>
                            <asp:ListItem Value="6">1 Día</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropCiclo5" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>

        </div>
        <div>

            <table style="width:100%;">
                <tr>
                    <td class="auto-style4">Nota</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="600px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="BotonEnviar" runat="server" Text="Enviar" OnClick="BotonEnviar_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabelRevisarPaciente" runat="server" style="color: red"></asp:Label>
&nbsp;&nbsp;
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="BotonVolver" runat="server" Text="Volver" OnClick="BotonVolver_Click" />
                    </td>
                    <td class="auto-style1"></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
