VERSION 5.00
Begin VB.Form frm_register 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "USER REGISTER"
   ClientHeight    =   6936
   ClientLeft      =   48
   ClientTop       =   372
   ClientWidth     =   13920
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9095.625
   ScaleMode       =   0  'User
   ScaleWidth      =   16841.93
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame frm_register 
      Caption         =   "REGISTER"
      Height          =   3855
      Left            =   3960
      TabIndex        =   0
      Top             =   1320
      Width           =   5655
      Begin VB.TextBox txt_email 
         Height          =   285
         Left            =   1800
         TabIndex        =   7
         Top             =   1440
         Width           =   2655
      End
      Begin VB.TextBox txt_mbl 
         Height          =   285
         Left            =   1800
         TabIndex        =   6
         Top             =   960
         Width           =   2655
      End
      Begin VB.CommandButton cmd_register 
         Caption         =   "Register"
         Height          =   435
         Left            =   3120
         TabIndex        =   5
         Top             =   2040
         Width           =   1335
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   1800
         TabIndex        =   4
         Top             =   480
         Width           =   2655
      End
      Begin VB.Label Label3 
         Caption         =   "E-mail:-"
         Height          =   255
         Left            =   360
         TabIndex        =   3
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "mobile no:-"
         Height          =   255
         Left            =   360
         TabIndex        =   2
         Top             =   960
         Width           =   855
      End
      Begin VB.Label Label1 
         Caption         =   "Name:-"
         Height          =   255
         Left            =   360
         TabIndex        =   1
         Top             =   480
         Width           =   615
      End
   End
End
Attribute VB_Name = "frm_register"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
