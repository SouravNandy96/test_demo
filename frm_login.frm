VERSION 5.00
Begin VB.Form frm_login 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "USER LOGIN"
   ClientHeight    =   6924
   ClientLeft      =   -12
   ClientTop       =   276
   ClientWidth     =   13920
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6924
   ScaleWidth      =   13920
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txt_password 
      BackColor       =   &H00C0FFFF&
      Height          =   285
      Left            =   6000
      TabIndex        =   4
      Top             =   3360
      Width           =   2535
   End
   Begin VB.Frame frm_login 
      BackColor       =   &H0080FFFF&
      Caption         =   "LOGIN"
      Height          =   3255
      Left            =   4320
      TabIndex        =   0
      Top             =   2160
      Width           =   5295
      Begin VB.CommandButton cmd_register 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Register"
         Height          =   375
         Left            =   3120
         TabIndex        =   6
         Top             =   2400
         Width           =   1095
      End
      Begin VB.TextBox txt_username 
         BackColor       =   &H00C0FFFF&
         Height          =   285
         Left            =   1680
         TabIndex        =   2
         Top             =   720
         Width           =   2535
      End
      Begin VB.CommandButton cmd_login 
         BackColor       =   &H00C0FFFF&
         Caption         =   "login"
         Height          =   375
         Left            =   3120
         TabIndex        =   5
         Top             =   1800
         Width           =   1095
      End
      Begin VB.Label Label2 
         BackColor       =   &H0080FFFF&
         Caption         =   "Password:-"
         Height          =   255
         Left            =   720
         TabIndex        =   3
         Top             =   1200
         Width           =   855
      End
      Begin VB.Label Label1 
         BackColor       =   &H0080FFFF&
         Caption         =   "User name:-"
         Height          =   255
         Left            =   720
         TabIndex        =   1
         Top             =   720
         Width           =   855
      End
   End
End
Attribute VB_Name = "frm_login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As New ADODB.Connection
Dim rs As New ADODB.Recordset

Private Sub cmd_login_Click()
On Error Resume Next
con = New ADODB.Connection
    con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + App.Path + "\bookmyshow.mdb;Persist Security Info=False"
    con.Open
    Dim str As String
    str = " select * from Table1 where name ='" + txt_username + "' and password='" + txt_password + "'"
    rs.CursorLocation = adUseClient
    rs.Open str, con, adOpenDynamic, adLockOptimistic
    If rs.RecordCount <= 0 Then
        MsgBox "Invalid account"
    Else
        If rs.Fields(1) = txt_username And rs.Fields(2) = txt_password Then
            MsgBox "login successful"
        End If
    End If
    con.Close
End Sub

