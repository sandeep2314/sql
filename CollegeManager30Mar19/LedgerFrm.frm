VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form LedgerFrm 
   Caption         =   "LEDGER"
   ClientHeight    =   8190
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10965
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   14.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "LedgerFrm.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8190
   ScaleWidth      =   10965
   WindowState     =   2  'Maximized
   Begin VB.ComboBox cmboGroup 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   4560
      Style           =   2  'Dropdown List
      TabIndex        =   47
      Top             =   7080
      Width           =   1575
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4155
      Left            =   9240
      TabIndex        =   8
      Top             =   1560
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00008000&
      Caption         =   "Fee Month"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   4575
      Left            =   11400
      TabIndex        =   34
      Top             =   960
      Width           =   1215
      Begin VB.CheckBox ckMonth 
         BackColor       =   &H00008000&
         Caption         =   "Jan"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   255
         Index           =   12
         Left            =   120
         TabIndex        =   46
         Top             =   240
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         BackColor       =   &H00008000&
         Caption         =   "Feb"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   255
         Index           =   13
         Left            =   120
         TabIndex        =   45
         Top             =   600
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         BackColor       =   &H00008000&
         Caption         =   "Mar"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   255
         Index           =   14
         Left            =   120
         TabIndex        =   44
         Top             =   960
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         BackColor       =   &H00008000&
         Caption         =   "Apr"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   43
         Top             =   1320
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         BackColor       =   &H00008000&
         Caption         =   "May"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   42
         Top             =   1680
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         BackColor       =   &H00008000&
         Caption         =   "Jun"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   41
         Top             =   2040
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         BackColor       =   &H00008000&
         Caption         =   "Jul"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   40
         Top             =   2400
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         BackColor       =   &H00008000&
         Caption         =   "Aug"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   39
         Top             =   2760
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         BackColor       =   &H00008000&
         Caption         =   "Sep"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   255
         Index           =   8
         Left            =   120
         TabIndex        =   38
         Top             =   3120
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         BackColor       =   &H00008000&
         Caption         =   "Oct"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   255
         Index           =   9
         Left            =   120
         TabIndex        =   37
         Top             =   3480
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         BackColor       =   &H00008000&
         Caption         =   "Nov"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   255
         Index           =   10
         Left            =   120
         TabIndex        =   36
         Top             =   3840
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         BackColor       =   &H00008000&
         Caption         =   "Dec"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   210
         Index           =   11
         Left            =   120
         TabIndex        =   35
         Top             =   4200
         Width           =   735
      End
   End
   Begin VB.CommandButton btnFeeBalanceInCsv 
      Caption         =   "&Make Fee balance File"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6960
      Style           =   1  'Graphical
      TabIndex        =   33
      Top             =   6600
      Width           =   2055
   End
   Begin VB.ComboBox cmboPM 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      ItemData        =   "LedgerFrm.frx":044A
      Left            =   6600
      List            =   "LedgerFrm.frx":044C
      Style           =   2  'Dropdown List
      TabIndex        =   32
      Top             =   1200
      Width           =   2295
   End
   Begin VB.TextBox txtString 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   2
      Left            =   2760
      TabIndex        =   29
      Top             =   7080
      Width           =   1575
   End
   Begin VB.TextBox txtString 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   960
      TabIndex        =   28
      Top             =   7080
      Width           =   1575
   End
   Begin VB.CommandButton btnFutureRecipt 
      Caption         =   "Fee Bill"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   960
      Style           =   1  'Graphical
      TabIndex        =   27
      Top             =   7560
      Width           =   1815
   End
   Begin VB.CommandButton btnStudentDayBookFile 
      Caption         =   "Student DayBook File"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   9000
      Style           =   1  'Graphical
      TabIndex        =   26
      Top             =   5880
      Visible         =   0   'False
      Width           =   2295
   End
   Begin VB.CommandButton btnDeleteLedger 
      Caption         =   "Delete Record"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9600
      Style           =   1  'Graphical
      TabIndex        =   25
      Top             =   6600
      Width           =   1695
   End
   Begin VB.CommandButton btnShow 
      Caption         =   "&Show"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4920
      Style           =   1  'Graphical
      TabIndex        =   24
      Top             =   5880
      Width           =   1335
   End
   Begin VB.CommandButton btnShowOnlyBalance 
      Caption         =   "Show Balance &Remaining"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4920
      Style           =   1  'Graphical
      TabIndex        =   23
      Top             =   6240
      Width           =   2055
   End
   Begin VB.CommandButton btnPrintRemaining 
      Caption         =   "Print Balance Remainin&g"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6960
      Style           =   1  'Graphical
      TabIndex        =   22
      Top             =   6240
      Width           =   2055
   End
   Begin VB.CommandButton btnPaymentDetails 
      Caption         =   "PaymentDeta&ils"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   9000
      Style           =   1  'Graphical
      TabIndex        =   21
      Top             =   6240
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.CommandButton btnClose 
      Caption         =   "&Close"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6240
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   5880
      Width           =   1335
   End
   Begin VB.CommandButton btnPrint 
      Caption         =   "&Print"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7590
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   5880
      Width           =   1335
   End
   Begin VB.CommandButton btnPrintStudentDayBook 
      Caption         =   "Print Br&eak Up"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4560
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   7560
      Width           =   1815
   End
   Begin VB.CommandButton btnStudentDayBook 
      Caption         =   "Show &Break Up"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7200
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   7560
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.TextBox txtFromDate 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   2640
      MaxLength       =   2
      TabIndex        =   1
      Top             =   600
      Width           =   615
   End
   Begin VB.TextBox txtFromDate 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   3360
      MaxLength       =   2
      TabIndex        =   2
      Top             =   600
      Width           =   615
   End
   Begin VB.TextBox txtFromDate 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   2
      Left            =   4080
      MaxLength       =   4
      TabIndex        =   3
      Top             =   600
      Width           =   735
   End
   Begin VB.TextBox txtToDate 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   2640
      MaxLength       =   2
      TabIndex        =   4
      Top             =   960
      Width           =   615
   End
   Begin VB.TextBox txtToDate 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   3360
      MaxLength       =   2
      TabIndex        =   5
      Top             =   960
      Width           =   615
   End
   Begin VB.TextBox txtToDate 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   2
      Left            =   4080
      MaxLength       =   4
      TabIndex        =   6
      Top             =   960
      Width           =   735
   End
   Begin VB.TextBox txtString 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   2640
      TabIndex        =   0
      Top             =   1320
      Width           =   3495
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid Grid1 
      Height          =   3735
      Left            =   360
      TabIndex        =   7
      Top             =   1680
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   6588
      _Version        =   393216
      SelectionMode   =   1
      AllowUserResizing=   3
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
      _Band(0).GridLinesBand=   1
      _Band(0).TextStyleBand=   0
      _Band(0).TextStyleHeader=   0
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "Student ID"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2760
      TabIndex        =   31
      Top             =   6840
      Width           =   975
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Class"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   960
      TabIndex        =   30
      Top             =   6840
      Width           =   975
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "From Date"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1080
      TabIndex        =   16
      Top             =   600
      Width           =   975
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "To Date"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1080
      TabIndex        =   15
      Top             =   960
      Width           =   975
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "dd"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   2760
      TabIndex        =   14
      Top             =   360
      Width           =   375
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "mm"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   1
      Left            =   3480
      TabIndex        =   13
      Top             =   360
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "yyyy"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   2
      Left            =   4200
      TabIndex        =   12
      Top             =   360
      Width           =   855
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4320
      TabIndex        =   11
      Top             =   120
      Width           =   3495
   End
   Begin VB.Label Label1 
      Caption         =   "Account Name"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1080
      TabIndex        =   10
      Top             =   1320
      Width           =   1455
   End
   Begin VB.Label Label2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   360
      TabIndex        =   9
      Top             =   5520
      Width           =   7935
   End
End
Attribute VB_Name = "LedgerFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Util As New Util
Dim site As New DBSite
Dim site2 As New DBSite2
Dim heads As String
Dim colCount As Integer
Dim deleteLid As String
Dim deleteFid As String
Dim whichtxt As String
Dim countMonths As Integer
Sub SetGrid1Properties()
    Grid1.Refresh
    Grid1.Clear
    If UCase(Trim(Me.txtString(0).Text)) = UCase("Student Account") Then
        Grid1.Cols = 6
    Else
        Grid1.Cols = 5
    End If
    Grid1.Rows = 2
    Grid1.ColWidth(0) = 800 * 2
    Grid1.row = 0
    If UCase(Trim(Me.txtString(0).Text)) = UCase("Student Account") Then
        Grid1.ColWidth(1) = 700
        Grid1.ColWidth(2) = 700 * 3
        Grid1.ColWidth(3) = 700 * 2
        Grid1.ColWidth(4) = 700 * 2
        Grid1.ColWidth(5) = 700 * 2
        Grid1.Col = 0
        Grid1.Text = "Date"
        Grid1.Col = 1
        Grid1.Text = "Folio No."
        Grid1.Col = 2
        Grid1.Text = "Particulars"
        Grid1.Col = 3
        Grid1.Text = "Debit"
        Grid1.Col = 4
        Grid1.Text = "Credit"
        Grid1.Col = 5
        Grid1.Text = "Balance"
    Else
        Grid1.ColWidth(1) = 800 * 4
        Grid1.ColWidth(2) = 800 * 2
        Grid1.ColWidth(3) = 800 * 2
        Grid1.ColWidth(4) = 800 * 2
        Grid1.Col = 0
        Grid1.Text = "Date"
        Grid1.Col = 1
        Grid1.Text = "LedgerId   Particulars"
        Grid1.Col = 2
        Grid1.Text = "Debit"
        Grid1.Col = 3
        Grid1.Text = "Credit"
        Grid1.Col = 4
        Grid1.Text = "Balance"
    End If
    Grid1.Width = Util.gridWidth(Grid1)
    
    Grid1.ColAlignment(1) = flexAlignLeftTop
    
End Sub
Private Sub btnCashBook_Click()
    Dim rs As Recordset
    Set rs = New Recordset
    Dim fromdate As Date
    Dim toDate As Date
    Dim startDate As Date
    startDate = "01-apr-20" & Util.GetSettingHome(site2, "financialyear")
    fromdate = Util.GetDate(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, "12", "01", "AM")
    toDate = Util.GetDate(Me.txtToDate(0).Text, Me.txtToDate(1).Text, Me.txtToDate(2).Text, "11", "59", "PM")
    Dim query As String
    Dim balance As Double
    If Not isPrint Then
        query = "SELECT cid, lDate, Group_Name, particulars, cr, dr, pid, source FROM tblLedger WHERE AcName='cash'  AND LDate between #" & startDate & "# AND #" & toDate & "# ORDER By ldate"
    If GM.isSql Then
        query = "SELECT cid, lDate, Group_Name, particulars, cr, dr, pid, source FROM vw_Ledger WHERE AcName='cash'  AND LDate between '" & startDate & "' AND '" & toDate & "' ORDER By ldate"
    End If
        rs.Open query, site2.conn
        Dim row As Integer
        Call SetGrid1Properties
        row = 1
        balance = 0
        If Not rs.EOF Then
            rs.MoveFirst
            Dim dr, cr As Double
            Dim ldate As Date
            Dim pid As String
            Dim receiptNo As String
            Dim particulars As String
            Dim ledgerNo As String
            site2.conn.Execute "DELETE FROM tblLedgerBalance"
            While rs.AbsolutePosition <> adPosEOF
                ldate = CDate(Util.CheckNull(rs.Fields("LDate").value))
                ledgerNo = Util.CheckNull(rs.Fields("cid").value)
                particulars = Util.CheckNull(rs.Fields("particulars").value)
                cr = Util.CheckNullDouble(rs.Fields("cr").value)
                dr = Util.CheckNullDouble(rs.Fields("dr").value)
                If Util.CheckNull(rs.Fields("source").value) = "PR" Then
                      particulars = "(Rcd) " + particulars
                ElseIf Util.CheckNull(rs.Fields("source").value) = "PM" Then
                      particulars = "(Paid) " + particulars
                ElseIf Util.CheckNull(rs.Fields("source").value) = "FC" Then
                      particulars = "(Fee Rcd) " + particulars
                End If
                balance = balance + val(dr - cr)
                pid = Util.CheckNull(rs.Fields("pid").value)
                receiptNo = Util.CheckNull(rs.Fields("Group_Name").value)
                Dim bal As Double
                If balance > 0 Then
                    bal = Util.FormatDouble(balance)
                    sp = "Dr"
                Else
                    bal = Util.FormatDouble((balance * -1))
                    sp = "Cr"
                End If
                site2.conn.Execute "INSERT INTO tblLedgerBalance(acname, lDate, particulars, dr, cr, sp, Balance, pid, lid) VALUES('cash', '" & Util.toSQLDate(ldate) & "' ,  " & Util.formatString(particulars) & ", " & dr & ", " & cr & ", '" & sp & "', " & bal & ", '" & pid & "', '" & receiptNo & "') "
                rs.MoveNext
            Wend
        End If
        rs.Close
    End If
    query = "SELECT lDate, lid, particulars, cr, dr, sp, balance, pid FROM tblLedgerBalance WHERE AcName='Cash'  AND LDate between #" & fromdate & "# AND #" & toDate & "# " 'ORDER By Ldate"
    If GM.isSql Then
        query = "SELECT lDate, lid, particulars, cr, dr, sp, balance, pid FROM tblLedgerBalance WHERE AcName='Cash'  AND LDate between '" & fromdate & "' AND '" & toDate & "' " 'ORDER By Ldate"
    End If
    rs.Open query, site2.conn
    If Not isPrint Then
        row = 1
        Grid1.Rows = 2
    End If
    If Not rs.EOF Then
        If isPrint Then
           Dim startX, startY, SpaceBetweenLine, col1x, col1BX, col2X, col3X, col4X As Integer
           startX = 800
           startY = 100
           col1x = startX + 900
           col1BX = col1x + 150
           col2X = col1BX + 2000
           col3X = col2X + 2200
           col4X = col3X + 1500
           col5x = col4X + 1500
           col6x = col5x + 1500
           SpaceBetweenLine = 400
             Printer.FontSize = 12
             Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationName) / 2)
             Printer.CurrentY = startY
             Printer.Print GM.registrationName
             Printer.FontSize = 10
             startY = startY + 300
             Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAddress) / 2)
             Printer.CurrentY = startY
             Printer.Print GM.registrationAddress
             startY = startY + 300
             Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAffiliation) / 2)
             Printer.CurrentY = startY
             Printer.Print GM.registrationAffiliation
            Printer.CurrentX = startX + 2000
           Printer.CurrentY = startY + SpaceBetweenLine
           Printer.FontSize = 10
           Printer.FontBold = True
           Printer.Print "Cash Book  From " & Format(fromdate, "dd-mmm-yyyy") & " Date Till " & Format(toDate, "dd-mmm-yyyy")
           Printer.FontSize = 10
           SpaceBetweenLine = SpaceBetweenLine * 2
           Printer.CurrentX = startX - 600
           Printer.CurrentY = startY + SpaceBetweenLine
           Printer.Print "Date"
           Printer.CurrentX = startX + col2X
           Printer.CurrentY = startY + SpaceBetweenLine
           Printer.Print "Particulars"
           Printer.CurrentX = startX + col3X
           Printer.CurrentY = startY + SpaceBetweenLine
           Printer.Print "Debit"
           Printer.CurrentX = startX + col4X
           Printer.CurrentY = startY + SpaceBetweenLine
           Printer.Print "Credit"
           Printer.CurrentX = startX + col5x
           Printer.CurrentY = startY + SpaceBetweenLine
           Printer.Print "Balance"
           Printer.FontBold = False
        End If
        rs.MoveFirst
        Dim drTotal, crTotal As Double
        drTotal = 0
        crTotal = 0
        Dim dayOB As Double
        dayOB = 0
        Dim Dte As Date
        Dim debit As Double
        Dim credit As Double
        Dim balnCe As Double
        Dim cnt As Integer
        cnt = 0
        Dim isDr As Boolean
        isDr = True
        While rs.AbsolutePosition <> adPosEOF
            Dim sname, clas As String
            sname = ""
            clas = ""
            pid = Util.CheckNull(rs.Fields("pid").value)
            Dim p As Person
            Set p = New Person
            Dim p2 As Person
            p.pid = Trim(pid)
            Set p2 = p.GetPerson(site, -1)
            sname = p2.firstName + " " + p2.lastName
            clas = p2.dept
            Dim yyy As Integer
            If isPrint Then
                yyy = Printer.CurrentY
                If yyy > GM.PrintPageSize Then
                    startX = 1000
                    startY = 100
                    Printer.CurrentY = startY
                    Printer.CurrentX = startX
                    Printer.NewPage
                    Printer.CurrentY = 100
                    SpaceBetweenLine = 400
                End If
             End If
            Dte = Util.CheckNull(rs.Fields("LDate").value)
            debit = Util.CheckNullDouble(rs.Fields("dr").value)
            credit = Util.CheckNullDouble(rs.Fields("cr").value)
            balnCe = Util.CheckNullDouble(rs.Fields("balance").value)
            cnt = cnt + 1
            If cnt = 1 Then
                dayOB = Util.LastClosingBalance(site2, fromdate, "Cash")
                isDr = Util.isLastClosingSPisDr(site2, fromdate, "Cash")
            End If
            If isPrint Then
                Printer.FontSize = 8
                SpaceBetweenLine = SpaceBetweenLine + 300
                Printer.CurrentX = startX - 600
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print Format(Dte, "dd-mmm-yyyy")
                Printer.CurrentX = startX + col2X - 1200
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print Trim(Util.CheckNull(rs.Fields("particulars").value) + sname + " " + clas)
                Call Util.PrintRightAlign(startX + col4X, startY + SpaceBetweenLine, Util.FormatDouble(Util.CheckNullDouble(rs.Fields("cr").value)))
                crTotal = crTotal + Util.CheckNullDouble(rs.Fields("cr").value)
                Call Util.PrintRightAlign(startX + col5x, startY + SpaceBetweenLine, Util.FormatDouble(Util.CheckNullDouble(rs.Fields("balance").value)) & " " & Util.CheckNull(rs.Fields("sp").value))
            Else
                Grid1.Rows = row + 1
                If cnt = 1 Then
                    Grid1.Rows = Grid1.Rows + 2
                    Grid1.Col = 1
                    Grid1.row = row
                    Grid1.Text = "Day Opening Balance "
                    If isDr Then
                        Grid1.Col = 2
                    Else
                        Grid1.Col = 3
                    End If
                    Grid1.row = row
                    Grid1.Text = dayOB
                    row = row + 2
                End If
                    Grid1.row = row
                    Grid1.Col = 0
                    Grid1.Text = Format(Dte, "dd-mmm-yyyy")
                    Grid1.Col = 1
                    Grid1.Text = Trim(Util.CheckNull(rs.Fields("particulars").value) + sname + " " + clas)
                    Grid1.Col = 2
                    Grid1.Text = Util.FormatDouble(debit)
                    drTotal = drTotal + debit
                    Grid1.Col = 3
                    Grid1.Text = Util.FormatDouble(credit)
                    crTotal = crTotal + credit
                    Grid1.Col = 4
                    Grid1.Text = Util.FormatDouble(balnCe) & " " & Util.CheckNull(rs.Fields("sp").value)
                    row = row + 1
            End If
            dayOB = balnCe
            oldDate = Dte
            rs.MoveNext
        Wend
            If isPrint Then
                SpaceBetweenLine = SpaceBetweenLine + 300
                Printer.CurrentX = startX + col2X
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print "Total"
                Call Util.PrintRightAlign(startX + col4X, startY + SpaceBetweenLine, Util.FormatDouble(crTotal))
            Else
                Grid1.Rows = row + 1
                Grid1.row = row
                Grid1.Col = 1
                Grid1.Text = "Total"
                Grid1.Col = 2
                Grid1.Text = Util.FormatDouble(drTotal)
                Grid1.Col = 3
                Grid1.Text = Util.FormatDouble(crTotal)
            End If
        If isPrint Then
            Printer.EndDoc
        End If
    End If
    rs.Close
End Sub

Private Sub btnClose_Click()
    Unload Me
    adminFrm.Show
End Sub
Private Sub btnDeleteLedger_Click()

 On Error GoTo errHandler:
        site2.conn.BeginTrans
            Call Util.deleteLedgerRecord(site2, deleteLid, deleteFid)
        site2.conn.CommitTrans
    
      Call FillGrid11(False)
    
errHandler:
    If Err.Number <> 0 Then
        MsgBox Err.description
        site2.conn.RollbackTrans
    End If
   
End Sub

Sub MakeFeebalanceFile()
        Dim rs As Recordset
        Set rs = New Recordset
        Dim query As String
        query = "SELECT * FROM tblFeeBalance"
        rs.Open query, site2.conn
        Util.Export2CSV_GetRows rs, App.Path & "\", "FeeBalance.CSV", 1000
        rs.Close
        Label2.Caption = "Created: " & App.Path & "\" & "FeeBalance.CSV"
    
End Sub


Private Sub btnFeeBalanceInCsv_Click()
    Call Me.FillGrid2(False)
    
    Call MakeFeebalanceFile
            
End Sub

Function GetCheckedMonths() As String
    GetCheckedMonths = ""
    countMonths = 0
    Dim count As Integer
    count = 0
    Dim i As Integer
    For i = 3 To 14
        If Me.ckMonth(i).value = 1 Then
            Dim mn As Integer
            mn = i
            If i > 11 Then
                mn = i - 12
            End If
            GetCheckedMonths = GetCheckedMonths + ", " & Format(mn + 1 & "/10/2004 ", "mmmm")
            count = count + 1
        End If
    Next
    countMonths = count
    
    If Len(GetCheckedMonths) > 0 Then
        GetCheckedMonths = Right(GetCheckedMonths, Len(GetCheckedMonths) - Len(", ") + 1)
    End If
End Function
Private Sub CheckCurrentMonth()
            Dim mnth As Integer
    '***********************
            Dim k As Integer
            Dim ckChecked As Boolean
            ckChecked = False
            For k = 3 To 14
                If Me.ckMonth(k).value = 1 Then
                    ckChecked = True
                    Exit For
                End If
            Next
    
      '****************
            mnth = CInt(Util.GetMonth(Now))
            If mnth < 4 Then
                mnth = 12 + mnth
            End If
            If Not ckChecked Then
                Me.ckMonth(mnth - 1).value = 1
            End If
            
End Sub



Private Sub btnFutureRecipt_Click()
    
    ' class
        
    
    Dim PreRcptFile As String
    PreRcptFile = App.Path & "\FeeBill.txt"
    Open PreRcptFile For Output As #1
        
        Dim rs As Recordset
        Set rs = New Recordset
        Dim query As String
        Dim balance As Double
        balance = 0
        If GM.isSql Then
            query = "SELECT pid, dept, FirstName+' '+ LastName sname "
            
            query = query & " From tblPerson "
            query = query & " WHERE tid IN (SELECT MAX(tid) FROM tblPerson GROUP BY PID) "
            query = query & " AND personType = 2"
            If Len(txtString(1).Text) > 0 Then
                query = query & " AND dept IN  ('" & txtString(1).Text & "')"
            End If
            If Len(txtString(2).Text) > 0 Then
                query = query & " AND pid IN  (" & txtString(2).Text & ")"
            End If
            
            query = query & " ORDER By dept, firstName"
        End If
        rs.Open query, site2.conn
        
        Dim sname As String
        Dim pid As String
        Dim sclass As String
        
        Dim rowCount As Integer
        rowCount = 1
        
        
        While rs.AbsolutePosition <> adPosEOF
           Dim startX, startY, SpaceBetweenLine, col1x, col2X, col3X, col4X, col5x, col6x, col7x, col8x As Integer
           startX = 800
           startY = 100
           col1x = 2
           col2X = 15
           col3X = 30
           col4X = 40
           col5x = 60
           col6x = 75
           col7x = 90
           col8x = 100
           
           sname = Util.CheckNull(rs.Fields("sname").value)
           pid = Util.CheckNull(rs.Fields("pid").value)
           sclass = Util.CheckNull(rs.Fields("dept").value)
           
          
          
          '-------------------------------
           
           
           
           Print #1, "***************************************************************************"
           
           
           Print #1, Tab(30); GM.registrationName
           Print #1, Tab(20); GM.registrationAddress
           Print #1,
           'Print #1, Tab(2); "Fee Bill for the month of : " & Format(Now, "mmm")
           Print #1, Tab(2); "Fee Bill for the month of : " & Me.GetCheckedMonths
           Print #1,
           Print #1, Tab(2); "Id: " & pid & "  Student Name:  " & sname & "  Class : " & sclass;
           Print #1,
           Print #1,
           Print #1,
           Print #1, Tab(col1x); "Fee Head"; Tab(col4X); "Amount  ";
           Print #1,
           Print #1,
           
           ' sandeep
           
           
               '-------------------------------
          
          
    Dim site22 As New DBSite2
          
    Dim qry2 As String
    Dim rs2 As Recordset
    Set rs2 = New Recordset
    qry2 = "SELECT cid, head as head, amount, fType, whichMonth "
    qry2 = qry2 & " FROM tblFeeStucture WHERE tid IN (SELECT max(tid) from tblFeeStucture Group By cid) "
    qry2 = qry2 & " AND   class = '" & sclass & "' "
    qry2 = qry2 & " AND pid IN ('0','" & pid & "') "
    
    qry2 = qry2 & " UNION "
    
    qry2 = qry2 & Util.GetTransportQry(pid)
    
    
    qry2 = qry2 & " UNION "
    
    qry2 = qry2 & " SELECT cid, headName as head, amount, 'One Time', DATENAME(month, cDate)  "
    qry2 = qry2 & " FROM tblFine WHERE tid IN (SELECT max(tid) from tblFine Group By cid)  "
    qry2 = qry2 & " AND pid = " & pid
    
    rs2.Open qry2, site22.conn, adOpenDynamic, adLockOptimistic
    
    Dim cid As String
    Dim head As String
    Dim WhichMonth As String
    Dim amount As Double
    Dim total As Double
    total = 0
    Dim count As Integer
    count = 0
    If Not rs2.EOF Then
        Dim mnth, fType As String
        'mnth = Format(Now, "mmm")
        
        
        
        '''''''''''''''''''''''''''
        
        Dim mnthString, lastMonth As String
        
        
        
        mnthString = GetCheckedMonths
        If countMonths = 0 Then
            MsgBox "Pls. select at least one month.."
            'ckMonth(Index).value = 1
            Close #1
        Exit Sub
    End If
    Dim firstMonth As String
    Dim k As Integer
        For k = 0 To countMonths - 1
              lastMonth = Util.GetToken(Trim(GetCheckedMonths), ",", k)
              If k = 0 Then
                firstMonth = lastMonth
              End If
        Next
    
        
        '''''''''''''''''''''''''''''''
        mnth = lastMonth
        
        
        
        'Dim countMonths As Integer
        
        'countMonths = 1
        
        rs2.MoveFirst
        While rs2.AbsolutePosition <> adPosEOF
            count = count + 1
            cid = Util.CheckNull(rs2.Fields("cid").value)
            head = Util.CheckNull(rs2.Fields("Head").value)
            fType = Util.CheckNull(rs2.Fields("fType").value)
            amount = Util.CheckNullDouble(rs2.Fields("amount").value)
            WhichMonth = Util.CheckNull(rs2.Fields("WhichMonth").value)
            
            head = head & " (" & fType & " - " & WhichMonth & ")"
            
            
            Dim willPrint As Boolean
            willPrint = True
            
            ' sandeep
            
            If (fType = "One Time" Or fType = "Annual") And Util.isWhichMonthSeleted(Me.GetCheckedMonths, WhichMonth) Then
                If Not UCase(WhichMonth) = UCase(mnth) Then
                    amount = 0
                    willPrint = False
                End If
            End If
            
            If (fType = "Monthly") And Util.isDiscountHead(site2, head) Then
                Dim tutionAmount As Double
                Dim TtltutionAmount As Double
                tutionAmount = amount
                TtltutionAmount = 0
                Dim i As Integer
                For i = 0 To countMonths - 1
                    Dim monthName As String
                    monthName = mnth
                    Dim YY As String
                    YY = Util.CalculateYearMonthWise(Now, monthName)
                    TtltutionAmount = TtltutionAmount + tutionAmount - (tutionAmount * (Util.GetMonthWiseDiscount(site22, pid, monthName, YY, head) / 100))
                Next
                amount = TtltutionAmount
            End If
            
            If (fType = "Annual") And Util.isDiscountHead(site22, head) And Util.isWhichMonthSeleted1(GetCheckedMonths, WhichMonth, countMonths) Then
                YY = Util.CalculateYearMonthWise(Now, WhichMonth)
                Dim tutionAmount2 As Double
                Dim TtltutionAmount2 As Double
                tutionAmount2 = amount
                TtltutionAmount2 = 0
                tutionAmount2 = amount
                TtltutionAmount2 = TtltutionAmount2 + tutionAmount2 - (tutionAmount2 * (Util.GetMonthWiseDiscount(site22, pid, WhichMonth, YY, head) / 100))
                amount = TtltutionAmount2
            End If
            If (fType = "Monthly") And Not Util.isDiscountHead(site22, head) Then
                amount = amount * countMonths
            End If
            
            
            Dim RcdfeeAmountByMonth As Double
            RcdfeeAmountByMonth = 0
            
            
            
            For k = 0 To countMonths
                Dim monthName2 As String
                monthName2 = Util.GetToken(GetCheckedMonths, ",", k)
                RcdfeeAmountByMonth = RcdfeeAmountByMonth + Util.GetFeeRcdMonthHeadWise(site2, pid, monthName2, head, "")
            Next
            
            'amount = amount - RcdfeeAmountByMonth
            
            
            Dim valu As String
            valu = Util.FormatDouble(amount)
            If amount > 0 Then
             'Call AddLabel(cid, head, count)
             
             Dim headLen As Integer
             
             headLen = Len(head)
             
             Print #1, Tab(col1x); head; Tab(col5x - headLen); Util.FormatDouble(amount)
             
             
            End If
            total = total + amount
            
            
            DoEvents
            
            rs2.MoveNext
        Wend
    End If
    rs2.Close
    
    Dim pBalance As Double
    Dim pDt As Date
    
    pDt = Util.GetDate("01", lastMonth, Util.GetSettingHome(site2, "financialyear"), "", "", "")
    
    
    'pBalance = Util.GetStudentFeeBalance(site2, Now, CInt(pid))
    pBalance = Util.GetStudentFeeBalance(site2, pDt, CInt(pid))
           
            Print #1,
            
            Dim prv_amount As Double
            prv_amount = pBalance - GetCurrentTotal(pid, sclass)
            Dim totalPayable As Double
            totalPayable = prv_amount + total
            If totalPayable < 0 Then
                totalPayable = 0
            End If
            
            Print #1, Tab(col1x); "Previous Balance "; Tab(col5x); Util.FormatDouble(prv_amount)
            
            Print #1,
            Print #1, Tab(col1x); "-------------------------------------------------------"
            Print #1, Tab(col1x); "Total Payable "; Tab(col5x); Util.FormatDouble(totalPayable)
           ' Print #1, Tab(col1x); "Total "; Tab(col5x - 7); Util.FormatDouble(total)
            Print #1, Tab(col1x); "-------------------------------------------------------"
            Print #1,
            DoEvents
            Label2.Caption = " Working Please Wait...  " & sclass
            rowCount = rowCount + 1
            rs.MoveNext
        Wend
        
        rs.Close
        
    Close #1
       '5555
           
           Label2.Caption = "Wrote : " & PreRcptFile
    

End Sub
Private Sub btnFutureRecipt_Click_26Apr19()
    
    ' class
    
    Dim PreRcptFile As String
    PreRcptFile = App.Path & "\FeeBill.txt"
    Open PreRcptFile For Output As #1
        
        Dim rs As Recordset
        Set rs = New Recordset
        Dim query As String
        Dim balance As Double
        balance = 0
        If GM.isSql Then
            query = "SELECT pid, dept, FirstName+' '+ LastName sname "
            
            query = query & " From tblPerson "
            query = query & " WHERE tid IN (SELECT MAX(tid) FROM tblPerson GROUP BY PID) "
            query = query & " AND personType = 2"
            If Len(txtString(1).Text) > 0 Then
                query = query & " AND dept IN  ('" & txtString(1).Text & "')"
            End If
            If Len(txtString(2).Text) > 0 Then
                query = query & " AND pid IN  (" & txtString(2).Text & ")"
            End If
            
            query = query & " ORDER By dept, firstName"
        End If
        rs.Open query, site2.conn
        
        Dim sname As String
        Dim pid As String
        Dim sclass As String
        
        Dim rowCount As Integer
        rowCount = 1
        
        
        While rs.AbsolutePosition <> adPosEOF
           Dim startX, startY, SpaceBetweenLine, col1x, col2X, col3X, col4X, col5x, col6x, col7x, col8x As Integer
           startX = 800
           startY = 100
           col1x = 2
           col2X = 15
           col3X = 30
           col4X = 40
           col5x = 60
           col6x = 75
           col7x = 90
           col8x = 100
           
           sname = Util.CheckNull(rs.Fields("sname").value)
           pid = Util.CheckNull(rs.Fields("pid").value)
           sclass = Util.CheckNull(rs.Fields("dept").value)
           
          
          
          '-------------------------------
           
           
           
           Print #1, "***************************************************************************"
           
           
           Print #1, Tab(30); GM.registrationName
           Print #1, Tab(20); GM.registrationAddress
           Print #1,
           'Print #1, Tab(2); "Fee Bill for the month of : " & Format(Now, "mmm")
           Print #1, Tab(2); "Fee Bill for the month of : " & Me.GetCheckedMonths
           Print #1,
           Print #1, Tab(2); "Id: " & pid & "  Student Name:  " & sname & "  Class : " & sclass;
           Print #1,
           Print #1,
           Print #1,
           Print #1, Tab(col1x); "Fee Head"; Tab(col5x); "Amount  ";
           Print #1,
           Print #1,
           
           ' sandeep
           
           
               '-------------------------------
          
          
    Dim site22 As New DBSite2
          
    Dim qry2 As String
    Dim rs2 As Recordset
    Set rs2 = New Recordset
    qry2 = "SELECT cid, head as head, amount, fType, whichMonth "
    qry2 = qry2 & " FROM tblFeeStucture WHERE tid IN (SELECT max(tid) from tblFeeStucture Group By cid) "
    qry2 = qry2 & " AND   class = '" & sclass & "' "
    qry2 = qry2 & " AND pid IN ('0','" & pid & "') "
    
    qry2 = qry2 & " UNION "
    
    qry2 = qry2 & Util.GetTransportQry(pid)
    qry2 = qry2 & " UNION "
    
    qry2 = qry2 & " SELECT cid, headName as head, amount, 'One Time', DATENAME(month, cDate)  "
    qry2 = qry2 & " FROM tblFine WHERE tid IN (SELECT max(tid) from tblFine Group By cid)  "
    qry2 = qry2 & " AND pid = " & pid
       
    
    rs2.Open qry2, site22.conn, adOpenDynamic, adLockOptimistic
    
    Dim cid As String
    Dim head As String
    Dim WhichMonth As String
    Dim amount As Double
    Dim total As Double
    total = 0
    Dim count As Integer
    count = 0
    If Not rs2.EOF Then
        Dim mnth, fType As String
        'mnth = Format(Now, "mmm")
        
        '''''''''''''''''''''''''''
        Dim mnthString, lastMonth As String
        mnthString = GetCheckedMonths
        If countMonths = 0 Then
            MsgBox "Pls. select at least one month.."
            'ckMonth(Index).value = 1
            Close #1
        Exit Sub
    End If
    Dim firstMonth As String
    Dim k As Integer
        For k = 0 To countMonths - 1
              lastMonth = Util.GetToken(Trim(GetCheckedMonths), ",", k)
              If k = 0 Then
                firstMonth = lastMonth
              End If
        Next
    
        '''''''''''''''''''''''''''''''
        mnth = lastMonth
        
        '777
        
        'Dim countMonths As Integer
        
        'countMonths = 1
        
        rs2.MoveFirst
        While rs2.AbsolutePosition <> adPosEOF
            count = count + 1
            cid = Util.CheckNull(rs2.Fields("cid").value)
            head = Util.CheckNull(rs2.Fields("Head").value)
            fType = Util.CheckNull(rs2.Fields("fType").value)
            amount = Util.CheckNullDouble(rs2.Fields("amount").value)
            WhichMonth = Util.CheckNull(rs2.Fields("WhichMonth").value)
            
            'head = head & " (" & fType & " - " & WhichMonth & ")"
            
            
            Dim showHead As String
            showHead = head '& " (" & fType & " - " & WhichMonth & ")"
            
            Dim willPrint As Boolean
            willPrint = True
            
            ' sandeep
            
            If (fType = "One Time" Or fType = "Annual") And Util.isWhichMonthSeleted(Me.GetCheckedMonths, WhichMonth) Then
                If Not UCase(WhichMonth) = UCase(mnth) Then
                    amount = 0
                    willPrint = False
                End If
            End If
            
            
            
            If (fType = "Monthly") And Util.isDiscountHead(site2, head) Then
                Dim tutionAmount As Double
                Dim TtltutionAmount As Double
                tutionAmount = amount
                TtltutionAmount = 0
                Dim i As Integer
                For i = 0 To countMonths - 1
                
                   'monthName = Util.GetToken(GetCheckedMonths, ",", i)
                    'Dim YY As String
                    'YY = Util.CalculateYearMonthWise(dtt, monthName)
                    'TtltutionAmount = TtltutionAmount + tutionAmount - (tutionAmount * (Util.GetMonthWiseDiscount(site2, pid, monthName, YY, head) / 100))
    
                    Dim monthName As String
                    monthName = Util.GetToken(GetCheckedMonths, ",", i)
                    Dim YY As String
                    YY = Util.CalculateYearMonthWise(Now, monthName)
                    
                    TtltutionAmount = TtltutionAmount + tutionAmount - (tutionAmount * (Util.GetMonthWiseDiscount(site22, pid, monthName, YY, head) / 100))
                    
                    'MsgBox "month " + monthName + " Head: " & head & " amount " & CStr(TtltutionAmount)
                    
                Next
                
                amount = TtltutionAmount
            End If
            
            If (fType = "Annual") And Util.isDiscountHead(site22, head) And Util.isWhichMonthSeleted1(GetCheckedMonths, WhichMonth, countMonths) Then
                YY = Util.CalculateYearMonthWise(Now, WhichMonth)
                Dim tutionAmount2 As Double
                Dim TtltutionAmount2 As Double
                tutionAmount2 = amount
                TtltutionAmount2 = 0
                tutionAmount2 = amount
                TtltutionAmount2 = TtltutionAmount2 + tutionAmount2 - (tutionAmount2 * (Util.GetMonthWiseDiscount(site22, pid, WhichMonth, YY, head) / 100))
                amount = TtltutionAmount2
            End If
            If (fType = "Monthly") And Not Util.isDiscountHead(site22, head) Then
                amount = amount * countMonths
            End If
            
            
            Dim RcdfeeAmountByMonth As Double
            RcdfeeAmountByMonth = 0
                       
            
            For k = 0 To countMonths
                Dim monthName2 As String
                monthName2 = Util.GetToken(GetCheckedMonths, ",", k)
                RcdfeeAmountByMonth = RcdfeeAmountByMonth + Util.GetFeeRcdMonthHeadWise(site2, pid, monthName2, head, "")
            Next
            
            amount = amount - RcdfeeAmountByMonth
                        
            Dim valu As String
            valu = Util.FormatDouble(amount)
            If amount > 0 Then
             'Call AddLabel(cid, head, count)
             
             Dim headLen As Integer
             
             headLen = Len(head)
             
             Print #1, Tab(col1x); showHead; Tab(col5x); Util.FormatDouble(amount)
             
             
            End If
            total = total + amount
            
            
            DoEvents
            
            rs2.MoveNext
        Wend
    End If
    rs2.Close
    
    Dim pBalance As Double
    Dim pDt As Date
    
    pDt = Util.GetDate("01", lastMonth, Util.GetSettingHome(site2, "financialyear"), "", "", "")
    
    
    'pBalance = Util.GetStudentFeeBalance(site2, Now, CInt(pid))
    pBalance = Util.GetStudentFeeBalance(site2, pDt, CInt(pid))
           
            Print #1,
            
            Dim prv_amount As Double
            prv_amount = pBalance - GetCurrentTotal(pid, sclass)
            Dim totalPayable As Double
            totalPayable = prv_amount + total
            If totalPayable < 0 Then
                totalPayable = 0
            End If
            
            Print #1, Tab(col1x); "Previous Balance "; Tab(col5x); Util.FormatDouble(prv_amount)
            
            Print #1,
            Print #1, Tab(col1x); "--------------------------------------------------------------------------------------------"
            Print #1, Tab(col1x); "Total Payable "; Tab(col5x); Util.FormatDouble(totalPayable)
            Print #1, Tab(col1x); "Total "; Tab(col5x); Util.FormatDouble(total)
            Print #1, Tab(col1x); "--------------------------------------------------------------------------------------------"
            Print #1,
            DoEvents
            Label2.Caption = " Working Please Wait...  " & sclass
            rowCount = rowCount + 1
            rs.MoveNext
        Wend
        
        rs.Close
        
    Close #1
       '5555
           
           Label2.Caption = "Wrote : " & PreRcptFile
    

End Sub
Private Sub btnFutureRecipt15Sep15_Click()
    
    ' class
        
 
    Dim PreRcptFile As String
    PreRcptFile = App.Path & "\FeeBill.txt"
    Open PreRcptFile For Output As #1
        
        Dim rs As Recordset
        Set rs = New Recordset
        Dim query As String
        Dim balance As Double
        balance = 0
        If GM.isSql Then
            query = "SELECT pid, dept, FirstName+' '+ LastName sname "
            
            query = query & " From tblPerson "
            query = query & " WHERE tid IN (SELECT MAX(tid) FROM tblPerson GROUP BY PID) "
            query = query & " AND personType = 2"
            If Len(txtString(1).Text) > 0 Then
                query = query & " AND dept IN  ('" & txtString(1).Text & "')"
            End If
            If Len(txtString(2).Text) > 0 Then
                query = query & " AND pid IN  (" & txtString(2).Text & ")"
            End If
            
            query = query & " ORDER By dept, firstName"
        End If
        rs.Open query, site2.conn
        
        Dim sname As String
        Dim pid As String
        Dim sclass As String
        
        Dim rowCount As Integer
        rowCount = 1
        
        
        While rs.AbsolutePosition <> adPosEOF
           Dim startX, startY, SpaceBetweenLine, col1x, col2X, col3X, col4X, col5x, col6x, col7x, col8x As Integer
           startX = 800
           startY = 100
           col1x = 2
           col2X = 15
           col3X = 30
           col4X = 40
           col5x = 60
           col6x = 75
           col7x = 90
           col8x = 100
           
           sname = Util.CheckNull(rs.Fields("sname").value)
           pid = Util.CheckNull(rs.Fields("pid").value)
           sclass = Util.CheckNull(rs.Fields("dept").value)
           
           
      
          
          
          '-------------------------------
           
           Dim balance2 As Double
           ' move next if balance  is 0
           pBalance2 = Util.GetStudentFeeBalance(site2, Now, CInt(pid))
           
           
           
           
           
           Print #1, "***************************************************************************"
           Print #1, Tab(2); rowCount
           
           Print #1, Tab(30); GM.registrationName
           Print #1, Tab(20); GM.registrationAddress
           Print #1,
           Print #1, Tab(2); "Fee Bill for the month of : " & Format(Now, "mmm")
           Print #1,
           Print #1, Tab(2); "Id: " & pid & "  Student Name:  " & sname & "  Class : " & sclass;
           Print #1,
           Print #1,
           Print #1,
           Print #1, Tab(col1x); "Fee Head"; Tab(col3X); "Amount  ";
           Print #1,
           Print #1,
           
           ' sandeep
           
           
               '-------------------------------
          
          
    Dim site22 As New DBSite2
          
    Dim qry2 As String
    Dim rs2 As Recordset
    Set rs2 = New Recordset
    qry2 = "SELECT cid, head as head, amount, fType, whichMonth "
    qry2 = qry2 & " FROM tblFeeStucture WHERE tid IN (SELECT max(tid) from tblFeeStucture Group By cid) "
    qry2 = qry2 & " AND   class = '" & sclass & "' "
    qry2 = qry2 & " AND pid IN ('0','" & pid & "') "
    qry2 = qry2 & " UNION "
    
    qry2 = qry2 & " SELECT cid, headName as head, amount, 'One Time', DATENAME(month, cDate)  "
    qry2 = qry2 & " FROM tblFine WHERE tid IN (SELECT max(tid) from tblFine Group By cid)  "
    qry2 = qry2 & " AND pid = " & pid
    
    
    qry2 = qry2 + " UNION "
    
    qry2 = qry2 + Util.GetTransportQry(pid)
    
    
    'MsgBox qry2
    
    rs2.Open qry2, site22.conn, adOpenDynamic, adLockOptimistic
    
    Dim cid As String
    Dim head As String
    Dim WhichMonth As String
    Dim amount As Double
    Dim total As Double
    total = 0
    Dim count As Integer
    count = 0
    If Not rs2.EOF Then
    
    ' 666
    
        Dim mnth, fType As String
        'mnth = Format(Now, "mmm")
        
        Dim mnthString, lastMonth As String
        mnthString = GetCheckedMonths
        If countMonths = 0 Then
            MsgBox "Pls. select at least one month.."
            'ckMonth(Index).value = 1
            Close #1
        Exit Sub
    End If
    Dim firstMonth As String
    Dim k As Integer
        For k = 0 To countMonths - 1
              lastMonth = Util.GetToken(Trim(GetCheckedMonths), ",", k)
              If k = 0 Then
                firstMonth = lastMonth
              End If
        Next
    
        '''''''''''''''''''''''''''''''
        mnth = lastMonth
        
               
        rs2.MoveFirst
        While rs2.AbsolutePosition <> adPosEOF
            count = count + 1
            cid = Util.CheckNull(rs2.Fields("cid").value)
            head = Util.CheckNull(rs2.Fields("Head").value)
            fType = Util.CheckNull(rs2.Fields("fType").value)
            amount = Util.CheckNullDouble(rs2.Fields("amount").value)
            WhichMonth = Util.CheckNull(rs2.Fields("WhichMonth").value)
            Dim willPrint As Boolean
            willPrint = True
            
            ' sandeep
            
            If (fType = "One Time" Or fType = "Annual") Then
                If Not UCase(WhichMonth) = UCase(mnth) Then
                    amount = 0
                    willPrint = False
                End If
            End If
            
            If (fType = "Monthly") And Util.isDiscountHead(site2, head) Then
                Dim tutionAmount As Double
                Dim TtltutionAmount As Double
                tutionAmount = amount
                TtltutionAmount = 0
                Dim i As Integer
                For i = 0 To countMonths - 1
                    Dim monthName As String
                    monthName = mnth
                    Dim YY As String
                    YY = Util.CalculateYearMonthWise(Now, monthName)
                    TtltutionAmount = TtltutionAmount + tutionAmount - (tutionAmount * (Util.GetMonthWiseDiscount(site22, pid, monthName, YY, head) / 100))
                Next
                amount = TtltutionAmount
            End If
            
            If (fType = "Annual") And Util.isDiscountHead(site22, head) Then
                YY = Util.CalculateYearMonthWise(Now, WhichMonth)
                Dim tutionAmount2 As Double
                Dim TtltutionAmount2 As Double
                tutionAmount2 = amount
                TtltutionAmount2 = 0
                tutionAmount2 = amount
                TtltutionAmount2 = TtltutionAmount2 + tutionAmount2 - (tutionAmount2 * (Util.GetMonthWiseDiscount(site22, pid, WhichMonth, YY, head) / 100))
                amount = TtltutionAmount2
            End If
            If (fType = "Monthly") And Not Util.isDiscountHead(site22, head) Then
                amount = amount * countMonths
            End If
            Dim valu As String
            valu = Util.FormatDouble(amount)
            If amount > 0 Then
             'Call AddLabel(cid, head, count)
             
             Print #1, Tab(col1x); head; Tab(col3X); Util.FormatDouble(amount)
             
             
            End If
            total = total + amount
            
            DoEvents
            
            rs2.MoveNext
        Wend
    End If
    rs2.Close
    
    Dim pBalance As Double
    ' 666
    pBalance = Util.GetStudentFeeBalance(site2, Now, CInt(pid))
           
            Print #1,
            Print #1, Tab(col1x); "Previous Balance "; Tab(col3X); Util.FormatDouble(pBalance - total)
            
            Print #1,
            Print #1, Tab(col1x); "---------------------------------------------------------------"
            Print #1, Tab(col1x); "Total Payable   "; Tab(col3X); Util.FormatDouble(pBalance)
            Print #1, Tab(col1x); "---------------------------------------------------------------"
            Print #1,
            DoEvents
            Label2.Caption = " Working Please Wait...  " & sclass
            rowCount = rowCount + 1
            rs.MoveNext
        Wend
        
        rs.Close
        
    Close #1
       '5555
           
           Label2.Caption = "Wrote : " & PreRcptFile
    

End Sub






Function GetCurrentTotal(pid As String, sclass As String) As Double
    
     Dim countMonths2 As Integer
     countMonths2 = 1
        
        
    Dim site22 As New DBSite2
          
    Dim qry2 As String
    Dim rs2 As Recordset
    Set rs2 = New Recordset
    qry2 = "SELECT cid, head as head, amount, fType, whichMonth "
    qry2 = qry2 & " FROM tblFeeStucture WHERE tid IN (SELECT max(tid) from tblFeeStucture Group By cid) "
    qry2 = qry2 & " AND   class = '" & sclass & "' "
    qry2 = qry2 & " AND pid IN ('0','" & pid & "') "
     qry2 = qry2 & " UNION "
    
    qry2 = qry2 & Util.GetTransportQry(pid)
       
    qry2 = qry2 & " UNION "
       
    qry2 = qry2 & " SELECT cid, headName as head, amount, 'One Time', DATENAME(month, cDate)  "
    qry2 = qry2 & " FROM tblFine WHERE tid IN (SELECT max(tid) from tblFine Group By cid)  "
    qry2 = qry2 & " AND pid = " & pid
    
    rs2.Open qry2, site22.conn, adOpenDynamic, adLockOptimistic
    
    Dim cid As String
    Dim head As String
    Dim WhichMonth As String
    Dim amount As Double
    Dim total As Double
    total = 0
    Dim count As Integer
    count = 0
    If Not rs2.EOF Then
        Dim mnth, fType As String
        mnth = Format(Now, "mmm")
        
        
        rs2.MoveFirst
        While rs2.AbsolutePosition <> adPosEOF
            count = count + 1
            cid = Util.CheckNull(rs2.Fields("cid").value)
            head = Util.CheckNull(rs2.Fields("Head").value)
            fType = Util.CheckNull(rs2.Fields("fType").value)
            amount = Util.CheckNullDouble(rs2.Fields("amount").value)
            WhichMonth = Util.CheckNull(rs2.Fields("WhichMonth").value)
            Dim willPrint As Boolean
            willPrint = True
            
            ' sandeep
            
            If (fType = "One Time" Or fType = "Annual") And Util.isWhichMonthSeleted(Me.GetCheckedMonths, WhichMonth) Then
                If Not UCase(WhichMonth) = UCase(mnth) Then
                    amount = 0
                    willPrint = False
                End If
            End If
            
            If (fType = "Monthly") And Util.isDiscountHead(site2, head) Then
                Dim tutionAmount As Double
                Dim TtltutionAmount As Double
                tutionAmount = amount
                TtltutionAmount = 0
                Dim i As Integer
                For i = 0 To countMonths2 - 1
                    Dim monthName As String
                    monthName = mnth
                    Dim YY As String
                    YY = Util.CalculateYearMonthWise(Now, monthName)
                    TtltutionAmount = TtltutionAmount + tutionAmount - (tutionAmount * (Util.GetMonthWiseDiscount(site22, pid, monthName, YY, head) / 100))
                Next
                amount = TtltutionAmount
            End If
            
            If (fType = "Annual") And Util.isDiscountHead(site22, head) Then
                YY = Util.CalculateYearMonthWise(Now, WhichMonth)
                Dim tutionAmount2 As Double
                Dim TtltutionAmount2 As Double
                tutionAmount2 = amount
                TtltutionAmount2 = 0
                tutionAmount2 = amount
                TtltutionAmount2 = TtltutionAmount2 + tutionAmount2 - (tutionAmount2 * (Util.GetMonthWiseDiscount(site22, pid, WhichMonth, YY, head) / 100))
                amount = TtltutionAmount2
            End If
            If (fType = "Monthly") And Not Util.isDiscountHead(site22, head) Then
                amount = amount * countMonths2
            End If
            total = total + amount
            
            DoEvents
            
            rs2.MoveNext
        Wend
    End If
    rs2.Close
    
    GetCurrentTotal = total
    

End Function



Private Sub btnPaymentDetails_Click()
    Call StudentPaymentDetails(False)
End Sub

Private Sub btnPrint_Click()
    If GM.isLedgerFrm = 0 Then
        Call FillGrid11(True)
    Else
        Call FillGrid2(True)
    End If
End Sub

Private Sub btnPrintRemaining_Click()
    ShowRemainingFeesBalance (True)
End Sub

Private Sub btnPrintStudentDayBook_Click()
    Call BreakUp(False)
    'Call printBreakUpReport
    'Call printBreakUpReportFile
    Call printBreakUpReportCSV
    
End Sub

Private Sub btnShow_Click()
    Call ShowLedgerBalance
End Sub

Private Sub btnShowOnlyBalance_Click()
    Call ShowRemainingFeesBalance(False)
End Sub

Private Sub btnStudentDayBook_Click()
    Call Me.BreakUp(False)
End Sub

Private Sub btnStudentDayBookFile_Click()
    Dim party As String
    party = "Student Account"
    Open "c:\StudentDaybook.txt" For Output As #1
        Dim rs As Recordset
        Set rs = New Recordset
        Dim fromdate, toDate As Date
        Dim startDate As Date
        startDate = "01-apr-20" & Util.GetSettingHome(site2, "financialyear")
        fromdate = Util.GetDate(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, "12", "01", "AM")
        toDate = Util.GetDate(Me.txtToDate(0).Text, Me.txtToDate(1).Text, Me.txtToDate(2).Text, "11", "59", "PM")
        startDate = fromdate
        Dim query As String
        Dim balance As Double
        query = "SELECT cid, lDate, Group_Name, particulars, cr, dr, pid, source FROM tblLedger WHERE AcName='" & party & "'  AND LDate between #" & startDate & "# AND #" & toDate & "# ORDER By ldate"
        If GM.isSql Then
            query = "SELECT cid, lDate, Group_Name, particulars, cr, dr, pid, source FROM vw_Ledger WHERE AcName='" & party & "'  AND LDate between '" & startDate & "' AND '" & toDate & "' ORDER By ldate"
        End If
        rs.Open query, site2.conn
        balance = 0
        If Not rs.EOF Then
            rs.MoveFirst
            Dim dr, cr As Double
            Dim ldate As Date
            Dim pid As String
            Dim receiptNo As String
            Dim particulars As String
            Dim ledgerNo As String
            site2.conn.Execute "DELETE FROM tblLedgerBalance"
            While rs.AbsolutePosition <> adPosEOF
                ldate = CDate(Util.CheckNull(rs.Fields("LDate").value))
                ledgerNo = Util.CheckNull(rs.Fields("cid").value)
                particulars = Util.CheckNull(rs.Fields("particulars").value) + "(" + Util.GetModeParty(site2, Util.CheckNull(rs.Fields("cid").value), "Mode") + ")"
                cr = Util.CheckNullDouble(rs.Fields("cr").value)
                dr = Util.CheckNullDouble(rs.Fields("dr").value)
                balance = balance + val(dr - cr)
                pid = Util.CheckNull(rs.Fields("pid").value)
                receiptNo = Util.CheckNull(rs.Fields("Group_Name").value)
                Dim bal As Double
                If balance > 0 Then
                    bal = Util.FormatDouble(balance)
                    sp = "Dr"
                Else
                    bal = Util.FormatDouble((balance * -1))
                    sp = "Cr"
                End If
                site2.conn.Execute "INSERT INTO tblLedgerBalance(acname, lDate, particulars, dr, cr, sp, Balance, pid, lid) VALUES('" & party & "', '" & Util.toSQLDate(ldate) & "' ,  " & Util.formatString(particulars) & ", " & dr & ", " & cr & ", '" & sp & "', " & bal & ", '" & pid & "', '" & receiptNo & "') "
                rs.MoveNext
            Wend
        End If
        rs.Close
        query = "SELECT lDate, lid, particulars, cr, dr, sp, balance, pid FROM tblLedgerBalance WHERE AcName='" & party & "'  AND LDate between #" & fromdate & "# AND #" & toDate & "# " 'ORDER By Ldate"
        If GM.isSql Then
            query = "SELECT lDate, lid, particulars, cr, dr, sp, balance, pid FROM tblLedgerBalance WHERE AcName='" & party & "'  AND LDate between '" & fromdate & "' AND '" & toDate & "' " 'ORDER By Ldate"
        End If
        rs.Open query, site2.conn
        If Not rs.EOF Then
           Dim startX, startY, SpaceBetweenLine, col1x, col2X, col3X, col4X, col5x, col6x, col7x, col8x As Integer
           startX = 800
           startY = 100
           col1x = 2
           col2X = 15
           col3X = 30
           col4X = 40
           col5x = 60
           col6x = 75
           col7x = 90
           col8x = 100
           '5555
           Print #1, Tab(30); GM.registrationName
           Print #1, Tab(20); GM.registrationAddress
           Print #1,
           Print #1, Tab(2); "Ledger Of " & party & " Date From " & Format(fromdate, "dd-mmm-yyyy") & " Date Till " & Format(toDate, "dd-mmm-yyyy")
           Print #1,
           Print #1,
           Print #1, "-------------------------------------------------------------------------------------------------------------"
           Print #1, Tab(col1x); "Date"; Tab(col2X); "Folio No."; Tab(col3X); "ID"; Tab(col4X); "Student Name"; Tab(col5x); "Class"; Tab(col6x); "Particulars"; Tab(col7x); "Credit"; Tab(col8x); "Balance"
           Print #1, "-------------------------------------------------------------------------------------------------------------"
           Print #1,
            rs.MoveFirst
            Dim drTotal, crTotal As Double
            drTotal = 0
            crTotal = 0
            While rs.AbsolutePosition <> adPosEOF
                Dim sname, clas As String
                sname = ""
                clas = ""
                pid = Util.CheckNull(rs.Fields("pid").value)
                Dim p As Person
                Set p = New Person
                Dim p2 As Person
                p.pid = Trim(pid)
                Set p2 = p.GetPerson(site, -1)
                sname = p2.firstName + " " + p2.lastName
                clas = p2.dept
                crTotal = crTotal + Util.CheckNullDouble(rs.Fields("cr").value)
                Print #1, Tab(col1x); Format(Util.CheckNull(rs.Fields("LDate").value), "dd-mmm-yy"); Tab(col2X); Util.FormatFolioNo(Util.CheckNull(rs.Fields("lid").value)); Tab(col3X); p2.pid; Tab(col4X); Trim(sname); Tab(col5x); Trim(clas); Tab(col6x); Util.CheckNull(rs.Fields("particulars").value); Tab(col7x); Util.FormatDouble(Util.CheckNullDouble(rs.Fields("cr").value)); Tab(col8x); Util.FormatDouble(Util.CheckNullDouble(rs.Fields("balance").value)) & " " & Util.CheckNull(rs.Fields("sp").value)
                rs.MoveNext
            Wend
            Print #1,
            Print #1, Tab(col6x); "----------------------"
            Print #1, Tab(col6x); "Total"; Tab(col7x); Util.FormatDouble(crTotal)
            Print #1, Tab(col6x); "----------------------"
        End If
        rs.Close
        Close #1
End Sub


Private Sub Form_Load()
    ' balance frm
    Me.KeyPreview = True
    If GM.isLedgerFrm = 1 Then
        Me.Label3.Caption = "Fees Balance"
        Me.Label1.Caption = "Class"
        For i = 0 To 2
            Me.txtFromDate(i).Visible = Not GM.isLedgerFrm = 1
            Me.txtToDate(i).Visible = Not GM.isLedgerFrm = 1
            Me.Label4(i).Visible = Not GM.isLedgerFrm = 1
            Me.Label5.Visible = Not GM.isLedgerFrm = 1
            Me.Label6.Visible = Not GM.isLedgerFrm = 1
        Next
        
        Frame1.Visible = False
        
    Else
        Me.Label3.Caption = "Ledger"
        
        For i = 0 To 2
            Util.SetProperties Me.txtFromDate(i)
            Util.SetProperties Me.txtToDate(i)
        Next
        Me.txtFromDate(0).Text = Util.GetDay(Now)
        Me.txtFromDate(1).Text = Util.GetMonth(Now)
        Me.txtFromDate(2).Text = Util.GetYear(Now)
        Me.txtToDate(0).Text = Util.GetDay(Now)
        Me.txtToDate(1).Text = Util.GetMonth(Now)
        Me.txtToDate(2).Text = Util.GetYear(Now)
        
        Frame1.Visible = True
        Call CheckCurrentMonth
        
    End If
    Me.btnShowOnlyBalance.Visible = GM.isLedgerFrm = 1
    Me.btnPrintRemaining.Visible = GM.isLedgerFrm = 1
    'Me.btnPaymentDetails.Visible = GM.isLedgerFrm = 1
    Me.btnFeeBalanceInCsv.Visible = GM.isLedgerFrm = 1
    Me.btnStudentDayBook.Visible = ((GM.isLedgerFrm = 0) And (GM.version = GM.professional))
    Me.btnPrintStudentDayBook.Visible = ((GM.isLedgerFrm = 0) And (GM.version = GM.professional))
    'Me.cmboPM.Visible = GM.isLedgerFrm = 0
    
    Me.cmboGroup.Visible = GM.isLedgerFrm = 0
    
    Call Me.UpdatePMCombo
    
    Call updateButtons
    Util.SetProperties Me.txtString(0)
    Util.SetProperties Me.txtString(1)
    Util.SetProperties Me.txtString(2)
    
    Call Util.FormResolution(Me)
    
    
    
End Sub
Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = 27 Then
        If List1.Visible = True Then
            List1.Visible = False
            Exit Sub
        End If
        Call btnClose_Click
    End If
End Sub

Private Sub Grid1_Click()
    deleteLid = ""
    deleteFid = ""
    If GM.isLedgerDelete Then
        If GM.isLedgerFrm = 0 And Len(Grid1.Text) > 0 Then
            Grid1.Col = 1
            If UCase(Trim(Me.txtString(0).Text)) = UCase("Student Account") Then
                deleteFid = Grid1.Text
            Else
                deleteLid = Grid1.Text
                deleteLid = Trim(Util.GetTruncated(deleteLid, "("))
            End If
        End If
     End If
End Sub
Private Sub List1_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        If whichtxt = 1 Then ' for party or class
            Call Util.HideList(Me.txtString(1), List1)
                Else
            Call Util.HideList(Me.txtString(0), List1)
        End If
    End If
End Sub
Private Sub List1_LostFocus()
    If whichtxt = 1 Then ' for party or class
            Call Util.HideList(Me.txtString(1), List1)
                Else
            Call Util.HideList(Me.txtString(0), List1)
        End If
End Sub
Private Sub txtFromDate_GotFocus(Index As Integer)
    Util.FOCUSME Me.txtFromDate(Index)
End Sub
Private Sub txtFromDate_LostFocus(Index As Integer)
    Call Util.LostFocus(txtFromDate(Index))
End Sub
Private Sub txtString_GotFocus(Index As Integer)
    Util.FOCUSME Me.txtString(0)
    Call MDIForm1.mdiHelp
End Sub
Private Sub txtString_KeyUp(Index As Integer, KeyCode As Integer, Shift As Integer)
    If Index = 0 Then
        whichtxt = 0
        Select Case KeyCode
            Case 13
                Call ShowLedgerBalance
            Case vbKeyDown
                If GM.isLedgerFrm = 0 Then
                    If List1.Visible And List1.ListCount > 0 Then
                        List1.SetFocus
                        'List1.Selected(0) = True
                     End If
                Else
                    Call Util.LoVClass(site, "Dept", List1)
                End If
        End Select
        If KeyCode < 112 And KeyCode <> vbKeyShift And KeyCode <> 13 Then
            If GM.isLedgerFrm = 0 Then
                Call Util.LoVParty(site, List1, txtString(0).Text)
                Call Util.LovAuto(List1, txtString(0))
            End If
        End If
   End If
   ' 999
   If Index = 1 Then
        If KeyCode = vbKeyDown Then
            Call Util.LoVClass(site, "Dept", List1)
            whichtxt = 1
      End If
   End If
   
   
End Sub
Sub SetGrid1Properties2()
    Grid1.Refresh
    Grid1.Clear
    Grid1.Cols = 7
    Dim w As Integer
    w = 900
    Grid1.ColWidth(0) = w
    Grid1.ColWidth(1) = w * 3
    Grid1.ColWidth(2) = w * 1.5
    'Grid1.ColWidth(3) = w * 1.5
    Grid1.ColWidth(3) = 0
    Grid1.ColWidth(4) = w * 1.5
    Grid1.ColWidth(5) = w * 1.5
    Grid1.ColWidth(6) = w
    Grid1.Width = Util.gridWidth(Grid1)
    Grid1.row = 0
    Grid1.Col = 0
    Grid1.Text = "ID"
    Grid1.Col = 1
    Grid1.Text = "Student Name"
    Grid1.Col = 2
    Grid1.Text = "Fees"
    Grid1.Col = 3
    Grid1.Text = "Discount"
    Grid1.Col = 4
    Grid1.Text = "Payment Rcd"
    Grid1.Col = 5
    Grid1.Text = "Balance"
    Grid1.Col = 6
    Grid1.Text = "Class"
    
End Sub
Sub FillGrid2(isPrint As Boolean)
    Me.Label2.Caption = "Processing, Pls. Wait....."
    Dim rs As Recordset
    Set rs = New Recordset
    Dim subQuery, query As String
    subQuery = "SELECT MAX(tid) FROM tblPerson  GROUP BY pid"
    query = "SELECT pid, Firstname +' '+ lastname as name, company, dept, phone1 FROM tblPerson "
    query = query & " WHERE tid IN (" & subQuery & ") "
    query = query & " AND dept IN (" & Util.formatParam(Me.txtString(0).Text) & ") "
    query = query & " ORDER BY dept, FirstName"
    
    'MsgBox query
    
    
    rs.Open query, site.conn
    Dim pid As String
    Dim totalFees, discount, paymentRcd As Double
    row = 1
    Grid1.Rows = 2
    Call SetGrid1Properties2
    Dim balance, totalBalance As Double
    totalBalance = 0
    Dim count As Integer
    count = 0
    
    Dim deleteFeeQry, insertFeeQry As String
    deleteFeeQry = "DELETE FROM tblFeeBalance"
    site2.conn.Execute deleteFeeQry
    
    
    Dim frmDt As Date
    Dim toDt As Date
    Dim fy As String
    
    fy = Util.GetSettingHome(site2, "financialYear")
    frmDt = CDate("APR/01/20" & fy)
    
    If Not (cmboPM.Text = "Current" Or cmboPM.Text = "") Then
        toDt = Util.CalculateLastDateOfMonth(site2, Me.cmboPM.Text)
    End If
    
    
    
    If Not rs.EOF Then
          If isPrint Then
            Dim startX, startY, SpaceBetweenLine, col2X, col3X, col4X As Integer
            startX = 1000
            startY = 100
            SpaceBetweenLine = 400
            col2X = startX + 600
            col3X = col2X + 1800
            col4X = col3X + 1800
            col5x = col4X + 1800
            col6x = col5x + 1800
            Printer.FontSize = 12
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationName) / 2)
            Printer.CurrentY = startY
            Printer.Print GM.registrationName
            Printer.FontSize = 10
            startY = startY + 300
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAddress) / 2)
            Printer.CurrentY = startY
            Printer.Print GM.registrationAddress
            startY = startY + 300
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAffiliation) / 2)
            Printer.CurrentY = startY
            Printer.Print GM.registrationAffiliation
            Printer.CurrentX = startX + 2000
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.FontSize = 10
            Printer.FontBold = True
            Printer.Print "Fee Balance For the class : " & Me.txtString(0).Text & " as on " & Format(Now, "dd-mmm-yyyy")
            Printer.FontSize = 10
            SpaceBetweenLine = SpaceBetweenLine * 2
            Printer.CurrentX = startX
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "ID"
            Printer.CurrentX = startX + col2X - 800
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Students Name"
            Printer.CurrentX = startX + col3X
            Printer.CurrentY = startY + SpaceBetweenLine
            'Printer.Print "Fees"
            Printer.CurrentX = startX + col4X
            Printer.CurrentY = startY + SpaceBetweenLine
            'Printer.Print "Discount"
            Printer.Print "Fees"
            Printer.CurrentX = startX + col5x
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Payment Rcd"
            Printer.CurrentX = startX + col6x
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Balance"
            Printer.FontBold = False
        End If
 '       ****************
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            balance = 0
            pid = Util.CheckNull(rs.Fields("pid").value)
            'totalFees = Util.GetTotalfees(site, site2, pid, Now)
            If cmboPM.Text = "Current" Or cmboPM.Text = "" Then
                totalFees = Util.GetTotalfees(site, site2, pid, Now)
                paymentRcd = Util.feesRcd(site2, pid)
                
           Else
                totalFees = Util.GetTotalfees(site, site2, pid, toDt)
                
                Dim toDt2 As Date
                
                If Me.cmboPM.Text = "January" Or Me.cmboPM.Text = "February" Or Me.cmboPM.Text = "March" Then
                   
                    toDt2 = DateAdd("yyyy", 1, toDt)
                Else
                    toDt2 = toDt
                End If
                               
                paymentRcd = Util.feesRcdByDate(site2, pid, frmDt, toDt2)
                
            End If
            
            'totalFees = Util.GetTotalfees(site, site2, pid, toDt)
            
            'discount = Util.GetDiscount(site2, pid, Now)
            'paymentRcd = Util.feesRcdByDate(site2, pid, frmDt, toDt)
            
            
            balance = totalFees - paymentRcd
            
            
            Dim StudentFathername As String
            StudentFathername = Util.CheckNull(rs.Fields("name").value) & " s/d/0 " & Util.CheckNull(rs.Fields("company").value)
            
            Grid1.Rows = row + 1
            Grid1.row = row
            Grid1.Col = 0
            Grid1.Text = pid
            Grid1.Col = 1
            Grid1.Text = StudentFathername
            Grid1.Col = 2
            Grid1.Text = Util.FormatDouble(totalFees)
            Grid1.Col = 3
            Grid1.Text = discount & " %"
            Grid1.Col = 4
            Grid1.Text = Util.FormatDouble(paymentRcd)
            Grid1.Col = 5
            Grid1.Text = Util.FormatDouble(balance)
            Grid1.Col = 6
            Grid1.Text = Util.CheckNull(rs.Fields("dept").value)
            If isPrint Then
              Printer.FontSize = 8
                If Printer.CurrentY > GM.PrintPageSize Then
                    Printer.NewPage
                    startX = 1000
                    startY = 100
                    SpaceBetweenLine = 400
                    Printer.CurrentX = startX
                    Printer.CurrentY = startY
                End If
                SpaceBetweenLine = SpaceBetweenLine + 300
                Printer.CurrentX = startX
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print pid
                Printer.CurrentX = startX + col2X - 800
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print Trim(StudentFathername)
                
                'Printer.CurrentX = startX + col4X
                'Printer.CurrentY = startY + SpaceBetweenLine
                'Printer.Print discount & " %"
                Call Util.PrintRightAlign(startX + col4X, startY + SpaceBetweenLine, Util.FormatDouble(totalFees))
                Call Util.PrintRightAlign(startX + col5x, startY + SpaceBetweenLine, Util.FormatDouble(paymentRcd))
                Call Util.PrintRightAlign(startX + col6x, startY + SpaceBetweenLine, Util.FormatDouble(balance))
            End If
            totalBalance = totalBalance + balance
            row = row + 1
            insertFeeQry = "INSERT INTO tblFeeBalance(PID, mobileNo, StudentName, className, Fees, PaymentRcd, BalanceAmount)"
            insertFeeQry = insertFeeQry + " VALUES ('" & pid & "', '" & Util.CheckNull(rs.Fields("phone1").value) & "', '" & Util.CheckNull(rs.Fields("name").value) & "', '" & Util.CheckNull(rs.Fields("dept").value) & "', " & Util.FormatDouble(totalFees) & ", " & Util.FormatDouble(paymentRcd) & ", " & Util.FormatDouble(balance) & " )"
                      
            site2.conn.Execute insertFeeQry
            
            DoEvents
            Me.Label2.Caption = " Processing.. Total Records  " & row - 1
            rs.MoveNext
        Wend
     row = row + 1
     Grid1.Rows = row + 1
     Grid1.row = row
     Grid1.Col = 4
     Grid1.Text = "Total Balance"
     Grid1.Col = 5
     Grid1.Text = Util.FormatDouble(totalBalance)
                       
     If isPrint Then
        Printer.FontBold = True
        SpaceBetweenLine = SpaceBetweenLine + 400
        Printer.CurrentX = startX + col2X
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.Print "Total Balance"
        Call Util.PrintRightAlign(startX + col6x, startY + SpaceBetweenLine, Util.FormatDouble(totalBalance))
        Printer.FontBold = False
        
         Printer.EndDoc
     End If
    End If
    rs.Close
    Me.Label2.Caption = " Done.. "
    'Me.Label2.Caption = totalBalance & "  Total Records  " & row - 1
End Sub
Sub FeeBalanceHeadMonthWise(isPrint As Boolean)
   ' 66666
   ' GetFees(site2 As DBSite2, Class As String, fType As String, pid As String, dt As Date)
   Dim mnth As Date
   mnth = CDate(txtString(0).Text)
   Dim s As Double
    s = Util.GetFees(site2, "II", "Monthly", "5005", mnth)
    MsgBox s
   
   
End Sub

Private Sub txtString_LostFocus(Index As Integer)
    Call Util.LostFocus(Me.txtString(0))
End Sub

Private Sub txtToDate_GotFocus(Index As Integer)
    Util.FOCUSME Me.txtToDate(Index)
End Sub

Private Sub txtToDate_LostFocus(Index As Integer)
    Call Util.LostFocus(txtToDate(Index))
End Sub
Sub FillGrid11(isPrint As Boolean)
    Dim rs As Recordset
    Set rs = New Recordset
    Dim fromdate, toDate As Date
    Dim startDate As Date
    startDate = "01-apr-20" & Util.GetSettingHome(site2, "financialyear")
    fromdate = Util.GetDate(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, "12", "01", "AM")
    toDate = Util.GetDate(Me.txtToDate(0).Text, Me.txtToDate(1).Text, Me.txtToDate(2).Text, "11", "59", "PM")
    If isStudentAccount Then
        startDate = fromdate
    End If
    Dim query As String
    Dim balance As Double
    If Not isPrint Then
        query = "SELECT cid, lDate, Group_Name, particulars, cr, dr, pid, source FROM tblLedger WHERE AcName='" & Me.txtString(0).Text & "'  AND LDate between #" & startDate & "# AND #" & toDate & "# ORDER By ldate"
        If GM.isSql Then
            query = "SELECT cid, lDate, Group_Name, particulars, cr, dr, pid, source FROM vw_Ledger "
            query = query & " WHERE AcName='" & Me.txtString(0).Text & "'"
            query = query & " AND LDate between '" & startDate & "' AND '" & toDate & "'"
                
            If Len(Trim(Me.cmboPM.Text)) > 0 Then
             If Me.cmboPM.Text <> "All" Then
                Dim src As String
                
                Select Case Me.cmboPM.Text
                     Case "Payment Rcd"
                        src = "PR"
                     Case "Payment Made"
                        src = "PM"
                     Case "Purchase"
                        src = "PU"
                     Case "Purchase Return"
                        src = "PR"
                     Case "Journal"
                        src = "JR"
                End Select
                
                query = query & " AND source = '" & src & "'"
            End If
            query = query & " ORDER By ldate"
            End If
        End If
    
        rs.Open query, site.conn
        Dim row As Integer
        Call SetGrid1Properties
        row = 1
        balance = 0
        site2.conn.Execute "DELETE FROM tblLedgerBalance"
        If Not rs.EOF Then
                        
            rs.MoveFirst
            Dim dr, cr As Double
            Dim ldate As Date
            Dim pid As String
            Dim receiptNo As String
            Dim particulars As String
            Dim ledgerNo As String
            
            While rs.AbsolutePosition <> adPosEOF
                
                

                ldate = CDate(Util.CheckNull(rs.Fields("LDate").value))
                ledgerNo = Util.CheckNull(rs.Fields("cid").value)
                DoEvents
                Label2.Caption = "Please wait..Working " & Format(ldate, "dd-mm-yyyy")
                'Particulars = Left(ledgerNo, Len(ledgerNo) - 1) + " " + Util.CheckNull(rs.Fields("particulars").value)
                particulars = Util.CheckNull(rs.Fields("particulars").value)
                
                If Not isStudentAccount Then
                    Dim myParty As String
                    myParty = Util.GetModeParty(site2, Util.CheckNull(rs.Fields("cid").value), "Party")
                    If UCase(Trim(Me.txtString(0).Text)) = UCase(Trim(myParty)) Then
                        myParty = Util.GetModeParty(site2, Util.CheckNull(rs.Fields("cid").value), "Mode")
                    End If
                    If isStudentAccount Then
                        myParty = ""
                    End If
                    particulars = myParty & " " & particulars
                End If
                cr = Util.CheckNullDouble(rs.Fields("cr").value)
                dr = Util.CheckNullDouble(rs.Fields("dr").value)
                If Not isStudentAccount Then
                    If Util.CheckNull(rs.Fields("source").value) = "PR" Then
                            particulars = "(Rcd) " + particulars
                    ElseIf Util.CheckNull(rs.Fields("source").value) = "PM" Then
                            particulars = "(Paid)  " + particulars
                    ElseIf Util.CheckNull(rs.Fields("source").value) = "FC" Then
                        particulars = "(Fee Rcd)" + particulars
                    ElseIf Util.CheckNull(rs.Fields("source").value) = "PU" Then
                        particulars = "(Purchase)" + particulars
                    ElseIf Util.CheckNull(rs.Fields("source").value) = "JR" Then
                        particulars = "(Journal)" + particulars
                    ElseIf Util.CheckNull(rs.Fields("source").value) = "PN" Then
                        particulars = "(Purchase Return)" + particulars
                    
                    End If
                End If
                If Not isStudentAccount Then
                    particulars = Left(ledgerNo, Len(ledgerNo) - 1) + "   " + particulars
                End If
                balance = balance + val(dr - cr)
                pid = Util.CheckNull(rs.Fields("pid").value)
                receiptNo = Util.CheckNull(rs.Fields("Group_Name").value)
                Dim bal As Double
                If balance > 0 Then
                    bal = Util.FormatDouble(balance)
                    sp = "Dr"
                Else
                    bal = Util.FormatDouble((balance * -1))
                    sp = "Cr"
                End If
                Dim sQry As String
                sQry = "INSERT INTO tblLedgerBalance(acname, lDate, particulars, dr, cr, sp, Balance, pid, lid) VALUES('" & Me.txtString(0).Text & "', '" & Util.toSQLDate(ldate) & "' ,  " & Util.formatString(particulars) & ", " & dr & ", " & cr & ", '" & sp & "', " & bal & ", '" & pid & "', '" & receiptNo & "') "
                site2.conn.Execute sQry
                rs.MoveNext
            Wend
        End If
        rs.Close
    End If
    query = "SELECT lDate, lid, particulars, cr, dr, sp, balance, pid FROM tblLedgerBalance WHERE AcName='" & Me.txtString(0).Text & "'  AND LDate between #" & fromdate & "# AND #" & toDate & "# " 'ORDER By Ldate"
    If GM.isSql Then
        query = "SELECT lDate, lid, particulars, cr, dr, sp, balance, pid FROM tblLedgerBalance WHERE AcName='" & Me.txtString(0).Text & "'  AND LDate between '" & fromdate & "' AND '" & toDate & "' " 'ORDER By Ldate"
    End If
    rs.Open query, site2.conn
    If Not isPrint Then
        row = 1
        Grid1.Rows = 2
    End If
    If Not rs.EOF Then
        If isPrint Then
           Dim startX, startY, SpaceBetweenLine, col1x, col1BX, col2X, col3X, col4X As Integer
           startX = 800
           startY = 100
           col1x = startX + 900
           col1BX = col1x + 150
           col2X = col1BX + 2000
           col3X = col2X + 2200
           col4X = col3X + 1500
           col5x = col4X + 1500
           col6x = col5x + 1500
           SpaceBetweenLine = 400
           
            Printer.FontSize = 12
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationName) / 2)
            Printer.CurrentY = startY
            Printer.Print GM.registrationName
            Printer.FontSize = 10
            startY = startY + 300
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAddress) / 2)
            Printer.CurrentY = startY
            Printer.Print GM.registrationAddress
            startY = startY + 300
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAffiliation) / 2)
            Printer.CurrentY = startY
            Printer.Print GM.registrationAffiliation
                   
           
           Printer.CurrentX = startX + 2000
           Printer.CurrentY = startY + SpaceBetweenLine
           Printer.FontSize = 10
           Printer.FontBold = True
           Printer.Print "Ledger Of " & Me.txtString(0).Text & " Date From " & Format(fromdate, "dd-mmm-yyyy") & " Date Till " & Format(toDate, "dd-mmm-yyyy")
           Printer.FontSize = 10
           SpaceBetweenLine = SpaceBetweenLine * 2
           Printer.CurrentX = startX - 600
           Printer.CurrentY = startY + SpaceBetweenLine
           Printer.Print "Date"
           If isStudentAccount Then
                Printer.CurrentX = startX + 500
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print "Folio No."
                Printer.CurrentX = startX + 1500
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print "ID"
                Printer.CurrentX = startX + col1x + 300
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print "Student Name"
                Printer.CurrentX = startX + col1BX + 2100
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print "Class"
                col2X = col2X + 800
           Else
                col2X = col2X - 1500
           End If
           If Not isStudentAccount Then
                Printer.CurrentX = startX + col2X - 1500
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print "LedgerId     Particulars"
             Else
                Printer.CurrentX = startX + col2X
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print "Particulars"
           End If
           If Not isStudentAccount Then
                Printer.CurrentX = startX + col3X
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print "Debit"
           End If
           Printer.CurrentX = startX + col4X
           Printer.CurrentY = startY + SpaceBetweenLine
           Printer.Print "Credit"
           Printer.CurrentX = startX + col5x
           Printer.CurrentY = startY + SpaceBetweenLine
           Printer.Print "Balance"
           Printer.FontBold = False
        End If
        rs.MoveFirst
        Dim drTotal, crTotal As Double
        drTotal = 0
        crTotal = 0
        While rs.AbsolutePosition <> adPosEOF
                Dim sname, clas As String
                sname = ""
                clas = ""
                
                'If Trim(Me.txtString(0).Text) = "Student Account" Then
                    pid = Util.CheckNull(rs.Fields("pid").value)
                    Dim p As Person
                    Set p = New Person
                    Dim p2 As Person
                    p.pid = Trim(pid)
                    Set p2 = p.GetPerson(site, -1)
                    sname = p2.firstName + " " + p2.lastName
                    clas = p2.dept
                 'End If
            Dim yyy As Integer
            If isPrint Then
                yyy = Printer.CurrentY
                If yyy > GM.PrintPageSize Then
                    startX = 1000
                    startY = 100
                    Printer.CurrentY = startY
                    Printer.CurrentX = startX
                    Printer.NewPage
                    Printer.CurrentY = 100
                    SpaceBetweenLine = 400
                End If
             End If
             
            If isPrint Then
                Printer.FontSize = 8
                SpaceBetweenLine = SpaceBetweenLine + 300
                Printer.CurrentX = startX - 600
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print Format(Util.CheckNull(rs.Fields("LDate").value), "dd-mmm-yy")
                If UCase(Trim(Me.txtString(0).Text)) = UCase("Student Account") Then
                    Printer.CurrentX = startX + 500
                    Printer.CurrentY = startY + SpaceBetweenLine
                    Printer.Print Util.FormatFolioNo(Util.CheckNull(rs.Fields("lid").value))
                    Printer.CurrentX = startX + 1500
                    Printer.CurrentY = startY + SpaceBetweenLine
                    Printer.Print p2.pid
                    Printer.CurrentX = startX + col1x + 300
                    Printer.CurrentY = startY + SpaceBetweenLine
                    Printer.Print Trim(sname)
                    Printer.CurrentX = startX + col1BX + 2100
                    Printer.CurrentY = startY + SpaceBetweenLine
                    Printer.Print Trim(clas)
                    Printer.CurrentX = startX + col2X
                    
                    Printer.CurrentY = startY + SpaceBetweenLine
                    Printer.CurrentX = startX + col2X
                    Printer.CurrentY = startY + SpaceBetweenLine + 200
                    Printer.Print Util.CheckNull(rs.Fields("particulars").value)
                Else
                    Printer.CurrentX = startX + col2X - 1200
                    Printer.CurrentY = startY + SpaceBetweenLine + 200
                    Printer.Print Trim(Util.CheckNull(rs.Fields("particulars").value))
                    Printer.CurrentX = startX + col2X - 1200
                    Printer.CurrentY = startY + SpaceBetweenLine
                    Printer.Print sname + " (" + clas + ")"
                End If
                If UCase(Trim(Me.txtString(0).Text)) <> UCase("Student Account") Then
                    Call Util.PrintRightAlign(startX + col3X, startY + SpaceBetweenLine, Util.FormatDouble(Util.CheckNullDouble(rs.Fields("dr").value)))
                    drTotal = drTotal + Util.CheckNullDouble(rs.Fields("dr").value)
                End If
                Call Util.PrintRightAlign(startX + col4X, startY + SpaceBetweenLine, Util.FormatDouble(Util.CheckNullDouble(rs.Fields("cr").value)))
                crTotal = crTotal + Util.CheckNullDouble(rs.Fields("cr").value)
                Call Util.PrintRightAlign(startX + col5x, startY + SpaceBetweenLine, Util.FormatDouble(Util.CheckNullDouble(rs.Fields("balance").value)) & " " & Util.CheckNull(rs.Fields("sp").value))
                startY = startY + 200
                
            Else
                Grid1.Rows = row + 1
                Grid1.row = row
                If UCase(Trim(Me.txtString(0).Text)) = UCase("Student Account") Then
                    Grid1.Col = 0
                    Grid1.Text = Format(Util.CheckNull(rs.Fields("LDate").value), "dd-mmm-yyyy")
                    Grid1.Col = 1
                    Grid1.Text = Util.FormatFolioNo(Util.CheckNull(rs.Fields("Lid").value))
                    Grid1.Col = 2
                    Grid1.Text = Trim(Util.CheckNull(rs.Fields("particulars").value) + sname + " " + clas)
                    Grid1.Col = 3
                    Grid1.Text = Util.FormatDouble(Util.CheckNullDouble(rs.Fields("dr").value))
                    drTotal = drTotal + Util.CheckNullDouble(rs.Fields("dr").value)
                    Grid1.Col = 4
                    Grid1.Text = Util.FormatDouble(Util.CheckNullDouble(rs.Fields("cr").value))
                    crTotal = crTotal + Util.CheckNullDouble(rs.Fields("cr").value)
                    Grid1.Col = 5
                    Grid1.Text = Util.FormatDouble(Util.CheckNullDouble(rs.Fields("balance").value)) & " " & Util.CheckNull(rs.Fields("sp").value)
                    
                Else  ' no receipt no.
                    Grid1.Col = 0
                    Grid1.Text = Format(Util.CheckNull(rs.Fields("LDate").value), "dd-mmm-yyyy")
                    Grid1.Col = 1
                    'sName=util.GetModeParty(site2,cid,"Party")
                    Grid1.Text = Trim(Util.CheckNull(rs.Fields("particulars").value) + sname + " " + clas)
                    Grid1.Col = 2
                    Grid1.Text = Util.FormatDouble(Util.CheckNullDouble(rs.Fields("dr").value))
                    drTotal = drTotal + Util.CheckNullDouble(rs.Fields("dr").value)
                    Grid1.Col = 3
                    Grid1.Text = Util.FormatDouble(Util.CheckNullDouble(rs.Fields("cr").value))
                    crTotal = crTotal + Util.CheckNullDouble(rs.Fields("cr").value)
                    Grid1.Col = 4
                    Grid1.Text = Util.FormatDouble(Util.CheckNullDouble(rs.Fields("balance").value)) & " " & Util.CheckNull(rs.Fields("sp").value)
                End If
                row = row + 1
            End If
            rs.MoveNext
            
        Wend
            If isPrint Then
                SpaceBetweenLine = SpaceBetweenLine + 300
                Printer.CurrentX = startX + col2X
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print "Total"
                If UCase(Trim(Me.txtString(0).Text)) <> UCase("Student Account") Then
                    Call Util.PrintRightAlign(startX + col3X, startY + SpaceBetweenLine, Util.FormatDouble(drTotal))
                End If
                Call Util.PrintRightAlign(startX + col4X, startY + SpaceBetweenLine, Util.FormatDouble(crTotal))
            Else
                Grid1.Rows = row + 1
                Grid1.row = row
                If UCase(Trim(Me.txtString(0).Text)) = UCase("Student Account") Then
                    Grid1.Col = 2
                    Grid1.Text = "Total"
                    Grid1.Col = 3
                    Grid1.Text = Util.FormatDouble(drTotal)
                    Grid1.Col = 4
                    Grid1.Text = Util.FormatDouble(crTotal)
                Else
                    Grid1.Col = 1
                    Grid1.Text = "Total"
                    Grid1.Col = 2
                    Grid1.Text = Util.FormatDouble(drTotal)
                    Grid1.Col = 3
                    Grid1.Text = Util.FormatDouble(crTotal)
              End If
            End If
        If isPrint Then
            Printer.EndDoc
        End If
    End If
    rs.Close
    Label2.Caption = "Done..Total Records: " & row - 1
End Sub
Sub ShowLedgerBalance()
    ' fee balance
    If GM.isLedgerFrm = 1 Then
        Call FillGrid2(False)
    Else
        If Util.CheckDate(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, "10", "10", "AM") = False Then
            MsgBox "Not A Valid Date..?"
            Me.txtFromDate(0).SetFocus
            Exit Sub
        End If
        If Util.CheckDate(Me.txtToDate(0).Text, Me.txtToDate(1).Text, Me.txtToDate(2).Text, "10", "10", "AM") = False Then
            MsgBox "Not A Valid Date..?"
            Me.txtToDate(0).SetFocus
            Exit Sub
        End If
        Call FillGrid11(False)
    End If
End Sub
Sub ShowRemainingFeesBalance(isPrint As Boolean)
    Me.Label2.Caption = "Processing, Pls. Wait....."
    Dim rs As Recordset
    Set rs = New Recordset
    Dim subQuery, query As String
    subQuery = "SELECT MAX(tid) FROM tblPerson  GROUP BY pid"
    query = "SELECT pid, Firstname +' '+ lastname as name, dept FROM tblPerson WHERE tid IN (" & subQuery & ") AND dept IN (" & Util.formatParam(Me.txtString(0).Text) & ") ORDER BY dept, FirstName"
    rs.Open query, site.conn
    Dim pid As String
    Dim totalFees, discount, paymentRcd As Double
    row = 1
    Grid1.Rows = 2
    Call SetGrid1Properties2
    Dim balance, totalBalance As Double
    totalBalance = 0
    Dim count As Integer
    count = 0
    If Not rs.EOF Then
'        ****************
          If isPrint Then
            Dim startX, startY, SpaceBetweenLine, col2X, col3X, col4X As Integer
            startX = 1000
            startY = 100
            SpaceBetweenLine = 400
            col2X = startX + 600
            col3X = col2X + 1800
            col4X = col3X + 1800
            col5x = col4X + 1800
            col6x = col5x + 1800
            
            Printer.FontSize = 12
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationName) / 2)
            Printer.CurrentY = startY
            Printer.Print GM.registrationName
            Printer.FontSize = 10
            startY = startY + 300
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAddress) / 2)
            Printer.CurrentY = startY
            Printer.Print GM.registrationAddress
            startY = startY + 300
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAffiliation) / 2)
            Printer.CurrentY = startY
            Printer.Print GM.registrationAffiliation
            
            Printer.CurrentX = startX + 2000
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.FontSize = 10
            Printer.FontBold = True
            Printer.Print " For the class : " & Me.txtString(0).Text & " as on " & Format(Now, "dd-mmm-yyyy")
            
            SpaceBetweenLine = SpaceBetweenLine * 2
            Printer.CurrentX = startX
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "ID"
            Printer.CurrentX = startX + col2X
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Students Name"
            Printer.CurrentX = startX + col3X
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Fees"
            Printer.CurrentX = startX + col4X
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Discount"
            Printer.CurrentX = startX + col5x
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Payment Rcd"
            Printer.CurrentX = startX + col6x
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Balance"
            Printer.FontBold = False
        End If
 '       ****************
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            balance = 0
            pid = Util.CheckNull(rs.Fields("pid").value)
            
            totalFees = Util.GetTotalfees(site, site2, pid, Now)
                    
            'discount = Util.GetDiscount(site2, pid, Now)
            paymentRcd = Util.feesRcd(site2, pid)
            balance = totalFees - paymentRcd
            If balance > 0 Then
                Grid1.Rows = row + 1
                Grid1.row = row
                Grid1.Col = 0
                Grid1.Text = pid
                Grid1.Col = 1
                Grid1.Text = Util.CheckNull(rs.Fields("name").value)
                Grid1.Col = 2
                Grid1.Text = Util.FormatDouble(totalFees)
                Grid1.Col = 3
                Grid1.Text = discount & " %"
                Grid1.Col = 4
                Grid1.Text = Util.FormatDouble(paymentRcd)
                Grid1.Col = 5
                Grid1.Text = Util.FormatDouble(balance)
                Grid1.Col = 6
                Grid1.Text = Util.CheckNull(rs.Fields("dept").value)
                If isPrint Then
                    If Printer.CurrentY > GM.PrintPageSize Then
                        Printer.NewPage
                        startX = 1000
                        startY = 100
                        SpaceBetweenLine = 400
                        Printer.CurrentX = startX
                        Printer.CurrentY = startY
                    End If
                    Printer.FontSize = 8
                    SpaceBetweenLine = SpaceBetweenLine + 300
                    Printer.CurrentX = startX
                    Printer.CurrentY = startY + SpaceBetweenLine
                    Printer.Print pid
                    Printer.CurrentX = startX + col2X
                    Printer.CurrentY = startY + SpaceBetweenLine
                    Printer.Print Trim(Util.CheckNull(rs.Fields("name").value))
                    'Printer.CurrentX = startX + col3X
                    'Printer.CurrentY = startY + SpaceBetweenLine
                    'Printer.Print Util.FormatDouble(totalFees)
                    Call Util.PrintRightAlign(startX + col3X, startY + SpaceBetweenLine, Util.FormatDouble(totalFees))
                    Printer.CurrentX = startX + col4X
                    Printer.CurrentY = startY + SpaceBetweenLine
                    'Printer.Print discount & " %"
                    'Printer.CurrentX = startX + col5X
                    'Printer.CurrentY = startY + SpaceBetweenLine
                    'Printer.Print Util.FormatDouble(paymentRcd)
                    Call Util.PrintRightAlign(startX + col5x, startY + SpaceBetweenLine, Util.FormatDouble(paymentRcd))
                    'Printer.CurrentX = startX + col6X
                    'Printer.CurrentY = startY + SpaceBetweenLine
                    'Printer.Print Util.FormatDouble(balance)
                    Call Util.PrintRightAlign(startX + col6x, startY + SpaceBetweenLine, Util.FormatDouble(balance))
                End If
                totalBalance = totalBalance + balance
                row = row + 1
            End If
            DoEvents
            Me.Label2.Caption = "Total Records  " & row - 1
            rs.MoveNext
        Wend
     row = row + 1
     Grid1.Rows = row + 1
     Grid1.row = row
     Grid1.Col = 4
     Grid1.Text = "Total Balance"
     Grid1.Col = 5
     Grid1.Text = Util.FormatDouble(totalBalance)
     If isPrint Then
     Printer.FontBold = True
        SpaceBetweenLine = SpaceBetweenLine + 400
        Printer.CurrentX = startX + col2X
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.Print "Total Balance"
        Call Util.PrintRightAlign(startX + col6x, startY + SpaceBetweenLine, Util.FormatDouble(totalBalance))
        Printer.FontBold = False
        Printer.EndDoc
     End If
    End If
    rs.Close
    'Me.Label2.Caption = "Total Records  " & row - 1
End Sub
Sub BreakUp(isPrint As Boolean)
    Dim rs As Recordset
    Set rs = New Recordset
    Dim fromdate, toDate As Date
    fromdate = Util.GetDate(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, "12", "01", "AM")
    toDate = Util.GetDate(Me.txtToDate(0).Text, Me.txtToDate(1).Text, Me.txtToDate(2).Text, "11", "59", "PM")
    Dim query As String
    Dim balance As Double
    
     Dim grp As String
     
     If Me.cmboGroup.Text = "Cash" Then
        grp = "Cash"
     ElseIf Me.cmboGroup.Text = "Bank" Then
        grp = "Bank Account"
     End If
     
    
    
    If GM.isSql Then
        
        query = query + " select cid, f.pid, bdate, f.head, SUM(FeeAmount) amount, receiptNo "
        query = query + " From tblBreakUp b "
        query = query + " LEFT OUTER JOIN tblFeeMonth f ON f.BreakUpId = b.cid "
        query = query + " WHERE bDate between '" & fromdate & "' AND '" & toDate & "'"
        query = query + " GROUP BY cid, bdate, f.pid, f.head,  receiptNo "
        query = query + "  ORDER By cid, bdate "
        
        'query = "SELECT b.cid, b.pid, bDate, head, amount, receiptNo  FROM tblBreakUp b "
        
    query = " SELECT b.cid, b.pid, bDate"
    query = query + " , (case when b.head = '111111' then 'Transport'"
    query = query + "     when f.headname is not null then f.headname"
     query = query + " else s.head end )Head"
    query = query + " , b.amount, receiptNo"
    query = query + " FROM tblBreakUp b"
    query = query + " LEFT OUTER JOIN tblFine f ON f.cid = b.head AND f.tid IN (SELECT MAX(tid) FROM tblFine GROUP BY cid) "
    query = query + " LEFT OUTER JOIN tblFeeStucture s on s.cid = b.head AND s.tid IN (SELECT MAX(tid) FROM tblFeeStucture GROUP BY cid) "


        
        
        
        If Me.cmboGroup.Text <> "All" Then
           query = "SELECT b.cid, b.pid, bDate"
           query = query + "  , (case when b.head = '111111' then 'Transport' "
           query = query + " when f.headname is not null then f.headname else s.head end )Head, b.amount "
           query = query + " , substring(l.particulars, charindex('|', l.particulars) + 1, len(l.particulars)) receiptNo FROM tblBreakUp b "
           
           query = query + "  LEFT OUTER JOIN tblFine f ON f.cid = b.head AND f.tid IN (SELECT MAX(tid) FROM tblFine GROUP BY cid)"
            query = query + " LEFT OUTER JOIN tblFeeStucture s on s.cid = b.head AND s.tid IN (SELECT MAX(tid) FROM tblFeeStucture GROUP BY cid) "
           
           query = query + " LEFT OUTER JOIN tblLedger l ON l.pid = b.pid  and Group_name = ReceiptNo "
           query = query + " LEFT OUTER JOIN tblPerson p ON p.FirstName = l.acname "
           
           
           If UCase(Me.cmboGroup.Text) = "CASH" Then
                query = query + " AND p.registrationNo IN ('Cash')"
            Else
                query = query + " AND p.registrationNo IN ('Bank Account')"
           End If
           query = query + " AND p.tid IN (select Max(tid) FROM tblPerson GROUP By Pid)"

        End If
        query = query + " WHERE bDate between '" & fromdate & "' AND '" & toDate & "'"
        
        If Len(txtString(2).Text) > 0 And IsNumeric(txtString(2).Text) Then
            query = query + " AND pid IN (" & txtString(2).Text & ")"
        End If
        
        'If Len(txtString(1).Text) > 0 Then
         '   query = query + " AND class IN (" & txtString(1).Text & ")"
        'End If
        
        
        
        ' 8888 break up by Group is cash or bank
        If Me.cmboGroup.Text <> "All" Then
            'query = query + "  AND l.acname IN (select firstName from tblPerson "
            'query = query + " where registrationNo = '" & grp & "'"
            'query = query + " AND tid IN (select Max(tid) from tblPerson Group By Pid)) "
            query = query + " AND FirstName IS NOT NULL "
            query = query + " AND FirstName = '" & Me.cmboGroup.Text & "'"
        End If

        query = query + " ORDER By b.cid, bdate"

        
    Else
        query = "SELECT cid, pid, bDate, head, amount, receiptNo FROM tblBreakUp WHERE bDate between #" & fromdate & "# AND #" & toDate & "# ORDER By cid, bdate"
    End If
    
    'MsgBox query
    
    rs.Open query, site.conn
    
    
    Dim rw As Integer
    Call SetGridForStudentDayBook
    rw = 1
    If Not rs.EOF Then
        rs.MoveFirst
        Dim head As String
        Dim amount As Double
        Dim bDate As Date
        Dim pid As String
        Dim receiptNo As String
        Dim grandttl As Double
        grandttl = 0
        If isPrint Then
            Printer.Orientation = 2
            Dim startX, startY, SpaceBetweenLine, col2X, col3X, col4X As Integer
            startX = 100
            startY = 100
            SpaceBetweenLine = 400
            col2X = 600
            col3X = 1100
            col4X = 1600
            col5x = 2100
            col6x = 2600
            Printer.FontSize = 9
            Printer.CurrentX = GM.startXX + 5000
            Printer.CurrentY = startY
            Printer.Print GM.registrationName
            Printer.CurrentX = startX + 4500
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Fee Break Up : " & Me.txtString(0).Text & " Date From " & Format(fromdate, "dd-mmm-yyyy") & " Date Till " & Format(toDate, "dd-mmm-yyyy")
            Printer.FontSize = 6
            Printer.FontBold = True
            SpaceBetweenLine = SpaceBetweenLine * 2
            Printer.CurrentX = startX
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Date"
            Printer.CurrentX = startX + col2X
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "RcptNo"
            Printer.CurrentX = startX + col3X
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Student Name"
            Dim m As Integer
            Dim XX As Integer
            'XX = 2500
            XX = 1500
            For m = 0 To colCount
                Printer.CurrentX = startX + col3X + XX
                Printer.CurrentY = startY + SpaceBetweenLine
                Dim str1 As String
                str1 = heads
                Printer.Print Util.GetToken(str1, ",", m)
                XX = XX + 1000
            Next
            Printer.CurrentX = startX + col3X + XX
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Total"
        End If
        Dim cid As String
        Dim newCid As String
        Dim rowNo As Integer
        newCid = ""
        While rs.AbsolutePosition <> adPosEOF
            cid = Util.CheckNull(rs.Fields("cid").value)
            head = Util.CheckNull(rs.Fields("head").value)
            receiptNo = Util.CheckNull(rs.Fields("receiptNo").value)
            bDate = CDate(Util.CheckNull(rs.Fields("bDate").value))
            amount = Util.CheckNullDouble(rs.Fields("amount").value)
            pid = Util.CheckNull(rs.Fields("pid").value)
            '333333
            Dim rowTotal As Double
            If cid <> newCid Then
                rowTotal = 0
                Dim p As Person
                Set p = New Person
                Dim p2 As Person
                p.pid = Trim(pid)
                Set p2 = p.GetPerson(site, -1)
                Dim sname As String
                Dim clas As String
                sname = p2.firstName + " " + p2.lastName
                clas = p2.dept
                Dim ttl As Double
                Grid1.Rows = rw + 1
                Grid1.row = rw
                Grid1.Col = 0
                Dim dtee As String
                dtee = Format(bDate, "dd-mmm-yyyy")
                Grid1.Text = dtee
                Grid1.Col = 1
                'Grid1.Text = Util.FormatFolioNo(receiptNo)
                Grid1.Text = receiptNo
                Grid1.Col = 2
                Grid1.Text = sname
                Grid1.Col = 3
                Grid1.Text = clas
                site2.conn.Execute "INSERT INTO tblBreakUpReport(cid, bDate, Pid, Name, Class, RcptNo) VALUES(" & Util.formatString(cid) & ", '" & dtee & "', " & Util.formatString(pid) & ", " & Util.formatString(sname) & ", " & Util.formatString(clas) & ", " & Util.formatString(receiptNo) & ")"
                    If isPrint Then
                        If Printer.CurrentY > GM.PrintPageSize Then
                            Printer.NewPage
                            startX = 100
                            startY = 100
                            SpaceBetweenLine = 400
                            Printer.CurrentX = startX
                            Printer.CurrentY = startY
                        End If
                        SpaceBetweenLine = SpaceBetweenLine + 400
                        Printer.CurrentX = startX
                        Printer.CurrentY = startY + SpaceBetweenLine
                        Printer.Print Format(bDate, "dd/mm/yy")
                        Printer.CurrentX = startX + col2X
                        Printer.CurrentY = startY + SpaceBetweenLine
                        Printer.Print Util.FormatFolioNo(receiptNo)
                        Printer.CurrentX = startX + col3X
                        Printer.CurrentY = startY + SpaceBetweenLine
                        Printer.Print sname & "(" & clas & ")  " & Printer.CurrentY
                    End If
                rowNo = rw
                End If
                    Dim j As Integer
                    Dim xxx As Integer
                    For j = 0 To colCount
                        If j = 0 Then
                            ttl = 0
                            xxx = 1750
                        End If
                        Dim str As String
                        Dim headName As String
                        str = heads
                        headName = Util.GetToken(str, ",", j)
                        If Trim(headName) = Trim(head) Then
                            Grid1.row = rowNo
                            Grid1.Col = j + 4
                            Grid1.Text = Util.FormatDouble(amount)
                            headName = Util.replaceSpecialCharacters(Replace(headName, " ", ""))
                            If Len(headName) > 0 Then
                                site2.conn.Execute "UPDATE tblBreakUpReport SET " & headName & " = " & Util.formatString(Util.FormatDouble(amount)) & " WHERE cid = '" & cid & "'"
                            End If
                            If isPrint Then
                                Call Util.PrintRightAlign(startX + col3X + xxx, startY + SpaceBetweenLine, Util.FormatDouble(amount))
                                xxx = xxx + 1000
                            End If
                        ttl = ttl + amount
                        rowTotal = rowTotal + ttl
                        End If
                    Next
                   Grid1.row = rowNo
                   Grid1.Col = j + 4
                   Grid1.Text = Util.FormatDouble(rowTotal)
                   Dim fRowtotal As String
                   fRowtotal = Util.FormatDouble(rowTotal)
                   site2.conn.Execute "UPDATE tblBreakUpReport SET total ='" & fRowtotal & "' WHERE cid = '" & cid & "'"
                If cid <> newCid Then
                   Grid1.Col = j + 4
                   Grid1.Text = Util.FormatDouble(rowTotal)
                   If isPrint Then
                       Call Util.PrintRightAlign(startX + col3X + xxx, startY + SpaceBetweenLine, Util.FormatDouble(ttl))
                       xxx = xxx + 1000
                    End If
                    grandttl = grandttl + ttl
                    Label2.Visible = True
                    DoEvents
                    Label2.Caption = "Record : " & rw
                    rw = rw + 1
                End If
            newCid = cid
            rs.MoveNext
        Wend
        Grid1.Rows = rw + 1
        Grid1.row = rw
        Grid1.Col = 2
        Grid1.Text = "       Grand Total"
        If isPrint Then
            SpaceBetweenLine = SpaceBetweenLine + 500
            Printer.CurrentX = startX + col3X
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print " Grand Total"
        End If
        Dim xxxx As Long
        xxxx = 1750
        For j = 0 To colCount
            Grid1.Col = j + 4
            Dim gColTotal As Double
            gColTotal = 0
            For i = 1 To rw - 1
                Grid1.row = i
                gColTotal = gColTotal + Util.CheckNullDouble(Grid1.Text)
            Next
            Grid1.row = rw
            If isPrint Then
                Call Util.PrintRightAlign(startX + col3X + xxxx, startY + SpaceBetweenLine, Util.FormatDouble(gColTotal))
            End If
            xxxx = xxxx + 1000
            Grid1.Text = Util.FormatDouble(gColTotal)
        Next
        Grid1.Col = j + 4
        gColTotal = 0
        For i = 1 To rw - 1
            Grid1.row = i
            gColTotal = gColTotal + Util.CheckNullDouble(Grid1.Text)
        Next
        Grid1.row = rw
        Grid1.Text = Util.FormatDouble(gColTotal)
        If isPrint Then
            Call Util.PrintRightAlign(startX + col3X + xxxx, startY + SpaceBetweenLine, Util.FormatDouble(gColTotal))
            xxxx = xxxx + 1000
        End If
        If isPrint Then
            Call Util.PrintRightAlign(startX + col3X + xxxx, startY + SpaceBetweenLine, Util.FormatDouble(gColTotal))
            xxxx = xxxx + 1000
            Call Util.PrintRightAlign(startX + col3X + xxxx, startY + SpaceBetweenLine, Util.FormatDouble(grandttl))
        End If
        rs.Close
    
    
    Label2.Caption = "Done....Records : " & rw - 1
    End If
    If isPrint Then
        Printer.EndDoc
    End If
    
End Sub
Sub SetGridForStudentDayBook()
    Grid1.Refresh
    Grid1.Clear
    heads = Util.getMaxNoOfFeesHeads(site2)
    colCount = Util.CountOccurenceOfString(",", Util.getMaxNoOfFeesHeads(site2))
    Grid1.Cols = colCount
    Grid1.ScrollBars = flexScrollBarBoth
    Dim cWidth As Integer
    cWidth = 500
    Grid1.ColWidth(0) = cWidth * 1.5
    Grid1.ColWidth(1) = cWidth
    Grid1.ColWidth(2) = cWidth * 1.5
    Grid1.ColWidth(3) = cWidth
    For i = 0 To colCount
        Grid1.ColWidth(i + 4) = cWidth * 1.5
    Next
    Grid1.ColWidth(i + 1 + 4) = cWidth * 1.5
    If (Util.gridWidth(Grid1) + 800) > 11000 Then
        Grid1.Width = 11000
    Else
        Grid1.Width = Util.gridWidth(Grid1) + 1500
    End If
    Grid1.row = 0
    Grid1.Col = 0
    Grid1.Text = "Date"
    Grid1.Col = 1
    Grid1.Text = "RcptNo"
    Grid1.Col = 2
    Grid1.Text = "Student Name"
    Grid1.Col = 3
    Grid1.Text = "Class"
    Dim colsStr As String
    colsStr = ""
    Dim j As Integer
    Dim hName As String
    hName = ""
    For j = 0 To colCount
        Grid1.Col = j + 4
        Dim str As String
        str = heads
        hName = Util.GetToken(str, ",", j)
        Grid1.Text = hName
        hName = Util.replaceSpecialCharacters(hName)
        If GM.isSql Then
            If Len(RTrim(LTrim(hName))) > 1 Then
                colsStr = colsStr + Replace(hName, " ", "") & " Varchar(100), "
            End If
        Else
            colsStr = colsStr + Replace(hName, " ", "") & " Text(100), "
        End If
        
    Next
    
    If GM.isSql Then
    
        If Len(colsStr) < Len(" Varchar(30),   ") Then colsStr = ""
        colsStr = "cid Varchar(30), bDate DATETIME, Pid Varchar(30), Name Varchar(100), Class Varchar(30), RcptNo Varchar(500), " & colsStr & "Total Varchar(30)"
    
    
    Else
        If Len(colsStr) < Len(" Text(10),   ") Then colsStr = ""
        colsStr = "cid Text(10), bDate Text(10), Pid Text(10), Name Text(100), Class Text(20), RcptNo Text(20), " & colsStr & "Total Text(10)"
    
    End If
    
    If Util.ifTableExists(site2, "tblBreakUpReport") Then
          site2.conn.Execute "DROP TABLE tblBreakUpReport"
    End If
    Dim createQry As String
    createQry = "CREATE TABLE tblBreakUpReport(" & colsStr & ")"
    'MsgBox createQry
    site2.conn.Execute createQry
    Grid1.Col = j + 4
    Grid1.Text = "Total"
End Sub
Sub printBreakUpReport()
    '5555
        Dim rs As Recordset
        Set rs = New Recordset
        Dim query As String
        query = "SELECT * FROM tblBreakUpReport"
        rs.Open query, site2.conn
        Dim XX, xxxx As Long
        Dim xxx As Long
        Dim YY As Long
        If Not rs.EOF Then
           rs.MoveFirst
           XX = 100
           xxx = 100
           xxxx = 100
           YY = 500
           Dim spaceY As Long
           spaceY = 350
           Dim spaceX, col1, col2, col3, col4, col5, col6, col7, col8, minusX As Long
           spaceX = 900
           minusX = 600
           col1 = spaceX - 300
           col2 = spaceX * 2 - minusX
           col3 = spaceX * 4 - minusX - 100
           col4 = spaceX * 5 - minusX
           col5 = spaceX * 7 - minusX
           col6 = spaceX * 10.5
           col7 = spaceX * 11.5
           Dim startY
           startY = 100
           Printer.Orientation = 2
           Printer.FontSize = 10
           Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationName) / 2)
           Printer.CurrentY = startY
           Printer.Print GM.registrationName
           Printer.FontSize = 10
           startY = startY + 300
           Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAddress) / 2)
           Printer.CurrentY = startY
           Printer.Print GM.registrationAddress
           startY = startY + 300
           Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAffiliation) / 2)
           Printer.CurrentY = startY
           Printer.Print GM.registrationAffiliation
           startY = startY + 300
           Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth("Scholar Register for class " & clas & " as on " & Format(Now, "dd-mmm-yy")) / 2) + 1500
           Printer.CurrentY = startY
           Printer.FontSize = 10
           Printer.FontBold = True
           Printer.Print "Fee BreakUp"
           Printer.FontSize = 7
           Printer.CurrentX = XX
           YY = startY + YY
           For i = 1 To rs.Fields.count - 1
                Printer.CurrentX = XX
                Printer.CurrentY = YY
                If i = 2 Or i = 3 Or i = 4 Then
                
                Else
                    Dim colHead As String
                    colHead = rs.Fields(i).Name
                    If colHead = "bDate" Then
                       colHead = "Date"
                    End If
                    Printer.Print colHead
                    XX = XX + (Len(rs.Fields(i).Name) * 10) + 1000
                End If
           Next
           Printer.FontBold = False
           YY = YY + spaceY + 200
           Dim slno As Long
           slno = 0
           Printer.FontSize = 7
           While rs.AbsolutePosition <> adPosEOF
               xxx = 100
               Dim valu As String
               valu = ""
               For j = 1 To rs.Fields.count - 1
                Printer.CurrentX = xxx
                Printer.CurrentY = YY
                If j = 2 Or j = 3 Or j = 4 Then
                
                Else
                    valu = Util.CheckNull(rs.Fields(j).value)
                    'If IsNumeric(valu) Then
                     '   Call Util.PrintRightAlign(xxx, yy, valu)
                    'Else
                     Printer.Print valu
                    'End If
                    xxx = xxx + (Len(rs.Fields(j).Name) * 10) + 1000
                End If
               Next
               YY = YY + spaceY
               If YY > GM.PrintPageSize Then
                    Printer.NewPage
                    xxx = 100
                    YY = 500
                    Printer.CurrentX = xxx
                    Printer.CurrentY = YY
               End If
               rs.MoveNext
           Wend
           YY = YY + spaceY
           Printer.CurrentX = 100
           Printer.CurrentY = YY
           Printer.FontBold = True
           Printer.Print "Total"
           
           xxxx = 100
           Dim k As Integer
           For k = 1 To rs.Fields.count - 1
                Printer.CurrentX = xxxx
                Printer.CurrentY = YY
                If k > 5 Then
                    Printer.Print Util.sumOfBreakUpCols(site2, rs.Fields(k).Name)
                    'Call Util.PrintRightAlign(xxxx, yy, Util.sumOfBreakUpCols(site2, rs.Fields(k).Name))
                End If
                If k = 2 Or k = 3 Or k = 4 Then
                
                Else
                    xxxx = xxxx + (Len(rs.Fields(k).Name) * 10) + 1000
                End If
            Next
           Printer.FontBold = False
           Printer.EndDoc
        End If
    End Sub
Sub printBreakUpReportFile()
    '5555
        Dim rs As Recordset
        Set rs = New Recordset
        Dim query As String
        query = "SELECT * FROM tblBreakUpReport"
        rs.Open query, site2.conn
        Dim XX, xxx As Integer
        XX = xxx = 5
        Open "c:\FeeBreakUp.csv" For Output As #1
        If Not rs.EOF Then
           '5555
           Print #1, Tab(30); GM.registrationName
           Print #1, Tab(20); GM.registrationAddress
           Print #1,
           Print #1, Tab(2); "Fee Breakup"
           Print #1,
           Print #1,
           Print #1, "----------------------------------------------------------------------------------------------------------------------------------------------------------"
           Dim str As String
           str = ""
           For i = 1 To rs.Fields.count - 1
            str = str & "           " & rs.Fields(i).Name
            XX = XX + 10
           Next
           Print #1, str
           Print #1, "-----------------------------------------------------------------------------------------------------------------------------------------------------------"
           Print #1,
            rs.MoveFirst
            While rs.AbsolutePosition <> adPosEOF
                Dim strr As String
                strr = ""
                For j = 1 To rs.Fields.count - 1
                    strr = strr & "         " & Util.CheckNull(rs.Fields(j).value)
                Next
                Print #1, strr
                Print #1,
                rs.MoveNext
            Wend
            Print #1,
            Print #1, Tab(col6x); "----------------------"
            Print #1, Tab(col6x); "Total"; Tab(col7x); Util.FormatDouble(crTotal)
            Print #1, Tab(col6x); "----------------------"
        End If
        rs.Close
        Close #1
    End Sub

Sub printBreakUpReportCSV()
    '5555
        Dim rs As Recordset
        Set rs = New Recordset
        Dim query As String
        query = "SELECT * FROM tblBreakUpReport"
        query = query & " WHERE 1=1 "
        If Len(txtString(1).Text) > 0 Then
            query = query & " AND class IN ('" & txtString(1).Text & "')"
        End If
        
        If Len(txtString(2).Text) > 0 Then
            query = query & " AND pid IN ('" & txtString(2).Text & "')"
        End If
        
        
        rs.Open query, site2.conn
        
    
'        MsgBox query
        
        If rs.EOF = False Then
            Util.Export2CSV_GetRows rs, App.Path & "\", "BreakUpReport.CSV", 1000
        End If
        
        
        rs.Close
        
        Label2.Caption = "Created: " & App.Path & "\" & "BreakUpReport.CSV"
        
        
        
        
        
        
    End Sub


Sub SetGridForPaymentDetails()
    Grid1.Refresh
    Grid1.Clear
    Grid1.Cols = 7
    Dim w As Integer
    w = 1000
    Grid1.ScrollBars = flexScrollBarBoth
    Grid1.ColWidth(0) = w
    Grid1.ColWidth(1) = w + 150
    Grid1.ColWidth(2) = w
    Grid1.ColWidth(3) = w * 2.5
    Grid1.ColWidth(4) = w
    Grid1.ColWidth(5) = w
    Grid1.ColWidth(6) = w + 250
    Grid1.Width = Util.gridWidth(Grid1) + 100
    Grid1.row = 0
    Grid1.Col = 0
    Grid1.Text = "ID"
    Grid1.Col = 1
    Grid1.Text = "Date"
    Grid1.Col = 2
    Grid1.Text = "Folio No."
    Grid1.Col = 3
    Grid1.Text = "Student Name"
    Grid1.Col = 4
    Grid1.Text = "Class"
    Grid1.Col = 5
    Grid1.Text = "Discount"
    Grid1.Col = 6
    Grid1.Text = "Fee Rcd"
    
End Sub
Sub StudentPaymentDetails(isPrint As Boolean)
    Dim rs As Recordset
    Set rs = New Recordset
    Dim subQuery, query As String
    subQuery = "SELECT MAX(tid) FROM tblPerson  GROUP BY pid"
    query = "SELECT pid, Firstname +' '+ lastname as name, dept FROM tblPerson WHERE tid IN (" & subQuery & ") AND dept IN (" & Util.formatParam(Me.txtString(0).Text) & ") ORDER BY  FirstName"
    rs.Open query, site.conn
    Dim pid As String
    Dim totalFees, discount, paymentRcd As Double
    Dim folioNo As String
    Dim ledgerDate As Date
    Dim totalFeeRcdPerStudent, totalFeeRcd As Double
    totalFeeRcd = 0
    Grid1.Rows = 2
    Dim oldPid, row As Integer
    oldPid = 0
    Call SetGridForPaymentDetails
    row = 1
    Dim balance, totalBalance As Double
    totalBalance = 0
    Dim count As Integer
    count = 0
    If Not rs.EOF Then
          If isPrint Then
            Dim startX, startY, SpaceBetweenLine, col2X, col3X, col4X As Integer
            startX = 1000
            startY = 100
            SpaceBetweenLine = 400
            col2X = startX + 600
            col3X = col2X + 1800
            col4X = col3X + 1800
            col5x = col4X + 1800
            col6x = col5x + 1800
            Printer.CurrentX = GM.startXX
            Printer.CurrentY = startY
            Printer.FontSize = 10
            Printer.Print GM.registrationName
            Printer.CurrentX = startX + 2000
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.FontSize = 10
            Printer.Print "Payment Details for the class : " & Me.txtString(0).Text & " as on " & Format(Now, "dd-mmm-yyyy")
            Printer.FontSize = 10
            SpaceBetweenLine = SpaceBetweenLine * 2
            Printer.CurrentX = startX
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "ID"
            Printer.CurrentX = startX + col2X
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Date"
            Printer.CurrentX = startX + col3X
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Folio No."
            Printer.CurrentX = startX + col4X
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Student Name"
            Printer.CurrentX = startX + col5x
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Discount"
            Printer.CurrentX = startX + col6x
            Printer.CurrentY = startY + SpaceBetweenLine
            Printer.Print "Fee Rcd"
        End If
         rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            balance = 0
            pid = Util.CheckNull(rs.Fields("pid").value)
            Dim rs2 As Recordset
            Set rs2 = New Recordset
            query = "SELECT lDate, cr, pid, Group_Name FROM vw_Ledger WHERE pid ='" & pid & "'  AND acName ='Student Account' ORDER By ldate" ' AND #" & toDate & "# ORDER By ldate"
            rs2.Open query, site2.conn
            If Not rs2.EOF Then
                rs2.MoveFirst
                If oldPid <> CInt(Trim(pid)) Then
                    totalFeeRcdPerStudent = 0
                    Grid1.Rows = row + 1
                    Grid1.row = row
                    Grid1.Col = 0
                    Grid1.Text = pid
                    Grid1.Col = 3
                    Grid1.Text = Util.CheckNull(rs.Fields("name").value)
                    Grid1.Col = 4
                    Grid1.Text = Me.txtString(0).Text
                    oldPid = CInt(Trim(pid))
                    row = row + 1
                End If
                While rs2.AbsolutePosition <> adPosEOF
                    ledgerDate = CDate(rs2.Fields("ldate").value)
                    'discount = Util.GetDiscount(site2, pid, ledgerDate)
                    paymentRcd = Util.CheckNullDouble(rs2.Fields("cr").value)
                    folioNo = Util.CheckNull(rs2.Fields("Group_Name").value)
                    Grid1.Rows = row + 1
                    Grid1.row = row
                    Grid1.Col = 1
                    Grid1.Text = Format(ledgerDate, "dd-mmm-yy")
                    Grid1.Col = 2
                    Grid1.Text = Util.FormatFolioNo(folioNo)
                    Grid1.Col = 3
                    Grid1.Text = ""
                    Grid1.Col = 5
                    Grid1.Text = discount & "%"
                    Grid1.Col = 6
                    Grid1.Text = Util.FormatDouble(paymentRcd)
                    totalFeeRcdPerStudent = totalFeeRcdPerStudent + CDbl(paymentRcd)
                    row = row + 1
                    rs2.MoveNext
                 Wend
                 
                 Grid1.Rows = row + 1
                 Grid1.row = row
                 Grid1.Col = 3
                 Grid1.Text = "Total Fee Rcd"
                 Grid1.Col = 6
                 Grid1.Text = Util.FormatDouble(totalFeeRcdPerStudent)
                 totalFeeRcd = totalFeeRcd + CDbl(totalFeeRcdPerStudent)
                 row = row + 2
            End If
                 
             If isPrint Then
                If Printer.CurrentY > GM.PrintPageSize Then
                    Printer.NewPage
                    startX = 1000
                    startY = 100 + 1500
                    SpaceBetweenLine = 400
                    Printer.CurrentX = startX
                    Printer.CurrentY = startY
                End If
                Printer.FontSize = 10
                SpaceBetweenLine = SpaceBetweenLine + 300
                Printer.CurrentX = startX
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print pid
                Printer.CurrentX = startX + col2X
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print Trim(Util.CheckNull(rs.Fields("name").value))
                Printer.CurrentX = startX + col3X
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print Util.FormatDouble(totalFees)
                Printer.CurrentX = startX + col4X
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print discount & " %"
                Printer.CurrentX = startX + col5x
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print Util.FormatDouble(paymentRcd)
                Printer.CurrentX = startX + col6x
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print Util.FormatDouble(balance)
            End If
            totalBalance = totalBalance + balance
            
            rs.MoveNext
        Wend
        Grid1.Rows = row + 1
        Grid1.row = row
        Grid1.Col = 3
        Grid1.Text = "Grand Total Fee Rcd"
        Grid1.Col = 6
        Grid1.Text = Util.FormatDouble(totalFeeRcd)
        row = row + 2
     If isPrint Then
        Printer.EndDoc
     End If
    End If
    rs.Close
    Me.Label2.Caption = "Total Records  " & row - 1
End Sub
Sub updateButtons()
    Me.btnDeleteLedger.Visible = GM.isLedgerFrm = 0 And GM.isLedgerDelete
    Me.btnStudentDayBookFile.Visible = GM.isLedgerFrm = 0
    
    Me.btnFutureRecipt.Visible = GM.isLedgerFrm = 0
    
    Me.txtString(1).Visible = GM.isLedgerFrm = 0
    Me.txtString(2).Visible = GM.isLedgerFrm = 0
    Me.Label7.Visible = GM.isLedgerFrm = 0
    Me.Label8.Visible = GM.isLedgerFrm = 0
    
    
End Sub

Sub UpdatePMCombo()

If GM.isLedgerFrm = 1 Then
    Me.cmboPM.AddItem "Current", 0
    Me.cmboPM.AddItem "April", 1
    Me.cmboPM.AddItem "May", 2
    Me.cmboPM.AddItem "June", 3
    Me.cmboPM.AddItem "July", 4
    Me.cmboPM.AddItem "August", 5
    Me.cmboPM.AddItem "September", 6
    Me.cmboPM.AddItem "October", 7
    Me.cmboPM.AddItem "November", 8
    Me.cmboPM.AddItem "December", 9
    Me.cmboPM.AddItem "January", 10
    Me.cmboPM.AddItem "February", 11
    Me.cmboPM.AddItem "March", 12
    
    
Else
    
    Me.cmboPM.AddItem "All", 0
    Me.cmboPM.AddItem "Payment Rcd", 1
    Me.cmboPM.AddItem "Payment Made", 2
    Me.cmboPM.AddItem "Purchase", 3
    Me.cmboPM.AddItem "Purchase Return", 4
    Me.cmboPM.AddItem "Journal", 5
    
    
    'Me.cmboGroup.AddItem "All", 0
    'Me.cmboGroup.AddItem "Cash", 1
    'Me.cmboGroup.AddItem "Bank", 2
   
    Call Util.FillBankCombo(site, cmboGroup)
    
End If
    
End Sub
