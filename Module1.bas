Attribute VB_Name = "Module1"
Option Explicit
Public cnn As ADODB.Connection

Public Sub getconnceted()
    Set cnn = New ADODB.Connection
    cnn.CursorLocation = adUseClient
    cnn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + App.Path + "\bookmyshow.mdb;Persist Security Info=False"
    cnn.Open
End Sub
