Imports System.Data
Imports System.Data.OleDb
Public Class agregarUsuario
    Inherits System.Web.UI.Page
    Dim conexion As New OleDbConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try

            conexion.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\ESCRITORIO\Componente practico Marcos Vacca\Ejercicio2.accdb;Persist Security Info=False;"
            conexion.Open()
        Catch ex As Exception
            MsgBox("Error al conectarse a la base de datos", vbCritical, "Error")
        End Try
    End Sub


    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        Dim comando As New OleDbCommand
        Dim cantidad As Integer

        comando = New OleDbCommand(
         "INSERT INTO usuario(nombres, apellidos, nacionalidad,
         estadocivil, correoelectronico, edad, programa) " &
         "VALUES( txtNombres, txtApellidos, txtNacionalidad,
         cboEstadoCivil, txtCorreoElectronico, txtEdad, txtPrograma )", conexion)
         
         comando.Parameters.AddWithValue("@txtNombres", txtNombres.Text)
         comando.Parameters.AddWithValue("@txtApellidos", txtApellidos.Text)
         comando.Parameters.AddWithValue("@txtNacionalidad", txtNacionalidad.Text)
         comando.Parameters.AddWithValue("@cboEstadoCivil", cboEstadoCivil.SelectedValue)
         comando.Parameters.AddWithValue("@txtCorreoElectronico", txtCorreoElectronico.Text)
         comando.Parameters.AddWithValue("@txtedad", txtedad.Text)
         comando.Parameters.AddWithValue("@txtprograma", txtprograma.Text)
         
         cantidad = comando.ExecuteNonQuery()
         
         If cantidad = 1 Then
         MsgBox("Usuario fue agregado exitosamente", vbInformation, "Registro de Usuario")
         Else
         MsgBox("Error al agregar el usuario", vbExclamation, "Registro de Usuario")
         End If
 End Sub
End Class