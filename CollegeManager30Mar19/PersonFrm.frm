VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form PersonFrm 
   Caption         =   "Person"
   ClientHeight    =   8580
   ClientLeft      =   60
   ClientTop       =   390
   ClientWidth     =   12990
   Icon            =   "PersonFrm.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8580
   ScaleWidth      =   12990
   WindowState     =   2  'Maximized
   Begin VB.ListBox List1 
      Height          =   3765
      Left            =   7200
      TabIndex        =   53
      Top             =   1560
      Width           =   1935
   End
   Begin VB.Frame FrameTC 
      Caption         =   "TC"
      Height          =   4935
      Left            =   9000
      TabIndex        =   114
      Top             =   2160
      Width           =   4335
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   38
         Left            =   2040
         TabIndex        =   124
         Top             =   4200
         Width           =   1575
      End
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   37
         Left            =   2040
         TabIndex        =   123
         Top             =   3840
         Width           =   1575
      End
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   36
         Left            =   2040
         TabIndex        =   122
         Top             =   3480
         Width           =   1575
      End
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   35
         Left            =   2040
         TabIndex        =   121
         Top             =   3120
         Width           =   1575
      End
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   34
         Left            =   2040
         TabIndex        =   120
         Top             =   2640
         Width           =   1575
      End
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   33
         Left            =   2040
         TabIndex        =   119
         Top             =   2160
         Width           =   1575
      End
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   32
         Left            =   2040
         TabIndex        =   118
         Top             =   1680
         Width           =   1575
      End
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   31
         Left            =   2040
         TabIndex        =   117
         Top             =   1200
         Width           =   1575
      End
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   30
         Left            =   2040
         TabIndex        =   116
         Top             =   720
         Width           =   1575
      End
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   29
         Left            =   2040
         TabIndex        =   115
         Top             =   240
         Width           =   1575
      End
      Begin VB.Label Label1 
         Caption         =   "Reason To Leave"
         Height          =   375
         Index           =   46
         Left            =   120
         TabIndex        =   135
         Top             =   4200
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Attendance"
         Height          =   375
         Index           =   45
         Left            =   120
         TabIndex        =   134
         Top             =   3840
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "No Of Meetings"
         Height          =   375
         Index           =   44
         Left            =   120
         TabIndex        =   133
         Top             =   3480
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Has NCC"
         Height          =   375
         Index           =   43
         Left            =   120
         TabIndex        =   132
         Top             =   3120
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Has Failed"
         Height          =   375
         Index           =   42
         Left            =   240
         TabIndex        =   131
         Top             =   2880
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Has Fee Discount"
         Height          =   375
         Index           =   41
         Left            =   120
         TabIndex        =   130
         Top             =   2520
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Has Paid Dues"
         Height          =   375
         Index           =   40
         Left            =   120
         TabIndex        =   129
         Top             =   2160
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Has Qualified For Next"
         Height          =   375
         Index           =   39
         Left            =   120
         TabIndex        =   128
         Top             =   1560
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Subjects"
         Height          =   375
         Index           =   38
         Left            =   120
         TabIndex        =   127
         Top             =   1200
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Has Failed"
         Height          =   375
         Index           =   37
         Left            =   120
         TabIndex        =   126
         Top             =   720
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "IsOBC"
         Height          =   375
         Index           =   36
         Left            =   120
         TabIndex        =   125
         Top             =   360
         Width           =   1695
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Transfer Certificate"
      Height          =   3975
      Left            =   15960
      TabIndex        =   103
      Top             =   240
      Visible         =   0   'False
      Width           =   2055
      Begin VB.OptionButton opPromotion 
         Caption         =   "Granted"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   112
         Top             =   720
         Width           =   1695
      End
      Begin VB.OptionButton opPromotion 
         Caption         =   "Refused"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   111
         Top             =   1080
         Width           =   1695
      End
      Begin VB.CommandButton btnPrintTC 
         Caption         =   "Print &TC"
         Enabled         =   0   'False
         Height          =   255
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   110
         Top             =   3480
         Width           =   1455
      End
      Begin VB.OptionButton opPromotion 
         Caption         =   "Not Applicable"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   109
         Top             =   1440
         Width           =   1695
      End
      Begin VB.Frame Frame4 
         Caption         =   "Character\Conduct"
         Height          =   1455
         Left            =   600
         TabIndex        =   104
         Top             =   3360
         Width           =   2055
         Begin VB.OptionButton opConduct 
            Caption         =   "Excellent"
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   108
            Top             =   360
            Width           =   1215
         End
         Begin VB.OptionButton opConduct 
            Caption         =   "Good"
            Height          =   195
            Index           =   1
            Left            =   120
            TabIndex        =   107
            Top             =   600
            Width           =   1215
         End
         Begin VB.OptionButton opConduct 
            Caption         =   "Satisfactory"
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   106
            Top             =   840
            Width           =   1215
         End
         Begin VB.OptionButton opConduct 
            Caption         =   "Unsatisfactory"
            Height          =   195
            Index           =   3
            Left            =   120
            TabIndex        =   105
            Top             =   1080
            Width           =   1695
         End
      End
      Begin VB.Label lblPromotion 
         Caption         =   "Promotion"
         Height          =   255
         Left            =   240
         TabIndex        =   113
         Top             =   360
         Width           =   1575
      End
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   28
      Left            =   6000
      TabIndex        =   23
      Top             =   2880
      Width           =   1575
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   27
      Left            =   1200
      TabIndex        =   21
      Top             =   2880
      Width           =   1575
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   26
      Left            =   3600
      TabIndex        =   17
      Top             =   2040
      Width           =   1335
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   25
      Left            =   1200
      TabIndex        =   16
      Top             =   2040
      Width           =   1575
   End
   Begin VB.CommandButton btnDoc 
      Caption         =   "Documents"
      Height          =   255
      Left            =   9840
      Style           =   1  'Graphical
      TabIndex        =   98
      Top             =   7680
      Width           =   1215
   End
   Begin VB.ComboBox cmboTransport 
      Height          =   315
      Left            =   6000
      Style           =   2  'Dropdown List
      TabIndex        =   20
      Top             =   2520
      Width           =   1575
   End
   Begin VB.CommandButton btnTC 
      Caption         =   "Print &TC"
      Height          =   255
      Left            =   8040
      Style           =   1  'Graphical
      TabIndex        =   96
      Top             =   8160
      Width           =   1695
   End
   Begin VB.CommandButton btnPrintCC 
      Caption         =   "Print &Character Cert."
      Height          =   255
      Left            =   6120
      Style           =   1  'Graphical
      TabIndex        =   95
      Top             =   8160
      Width           =   1935
   End
   Begin VB.CommandButton btnExport 
      Caption         =   "&Export To Excel"
      Height          =   255
      Left            =   4440
      Style           =   1  'Graphical
      TabIndex        =   94
      Top             =   8160
      Width           =   1695
   End
   Begin VB.CommandButton btnFind 
      Caption         =   "&Find"
      Height          =   255
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   93
      Top             =   8160
      Width           =   975
   End
   Begin VB.CommandButton btnDeleteClass 
      Caption         =   "Delete  Class"
      Height          =   255
      Left            =   9360
      Style           =   1  'Graphical
      TabIndex        =   92
      Top             =   8760
      Width           =   1935
   End
   Begin VB.CommandButton btnPrintForm 
      Caption         =   "Print &Record"
      Height          =   255
      Left            =   6960
      Style           =   1  'Graphical
      TabIndex        =   90
      Top             =   7800
      Width           =   1575
   End
   Begin VB.CommandButton btnPerformance 
      Caption         =   "Performance"
      Height          =   255
      Left            =   9000
      TabIndex        =   85
      Top             =   9840
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.CommandButton btnPrint 
      Caption         =   "&Print"
      Height          =   255
      Left            =   6240
      TabIndex        =   84
      Top             =   8760
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.CommandButton btnSave 
      Caption         =   "&Save"
      Height          =   255
      Left            =   3495
      Style           =   1  'Graphical
      TabIndex        =   83
      Top             =   7800
      Width           =   1095
   End
   Begin VB.CommandButton btnGetPerson 
      Caption         =   "&Get"
      Height          =   255
      Left            =   11040
      TabIndex        =   82
      Top             =   9360
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.CommandButton btnClose 
      Caption         =   "&Close"
      Height          =   255
      Left            =   4590
      Style           =   1  'Graphical
      TabIndex        =   81
      Top             =   7800
      Width           =   975
   End
   Begin VB.CommandButton btnClearAll 
      Caption         =   "Clear &All"
      Height          =   255
      Left            =   5565
      Style           =   1  'Graphical
      TabIndex        =   80
      Top             =   7800
      Width           =   1335
   End
   Begin VB.CommandButton btnDelete 
      Caption         =   "&Delete"
      Height          =   255
      Left            =   8520
      Style           =   1  'Graphical
      TabIndex        =   79
      Top             =   7800
      Width           =   1215
   End
   Begin VB.TextBox txtDOB 
      Height          =   285
      Index           =   5
      Left            =   4200
      TabIndex        =   9
      Top             =   720
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtDOB 
      Height          =   285
      Index           =   4
      Left            =   3720
      TabIndex        =   8
      Top             =   720
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtDOB 
      Height          =   285
      Index           =   3
      Left            =   3240
      TabIndex        =   7
      Top             =   720
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtDOB 
      Height          =   285
      Index           =   2
      Left            =   2160
      TabIndex        =   6
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox txtDOB 
      Height          =   285
      Index           =   1
      Left            =   1680
      TabIndex        =   5
      Top             =   720
      Width           =   495
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   24
      Left            =   6000
      TabIndex        =   12
      Top             =   1200
      Width           =   1575
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   23
      Left            =   3600
      TabIndex        =   14
      Top             =   1560
      Width           =   1335
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   22
      Left            =   1200
      TabIndex        =   13
      Top             =   1560
      Width           =   1575
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   21
      Left            =   1200
      TabIndex        =   10
      Top             =   1200
      Width           =   1575
   End
   Begin VB.TextBox txtDOB 
      Height          =   285
      Index           =   0
      Left            =   1200
      TabIndex        =   4
      Top             =   720
      Width           =   495
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   20
      Left            =   6000
      TabIndex        =   69
      Top             =   720
      Width           =   1575
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   7
      Left            =   3480
      TabIndex        =   25
      Top             =   3360
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   19
      Left            =   6840
      TabIndex        =   67
      Top             =   360
      Width           =   735
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   9
      Left            =   3600
      TabIndex        =   11
      Top             =   1200
      Width           =   1335
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   10
      Left            =   6000
      TabIndex        =   18
      Top             =   2040
      Width           =   1575
   End
   Begin VB.TextBox txtString 
      Height          =   405
      Index           =   18
      Left            =   1200
      MultiLine       =   -1  'True
      TabIndex        =   28
      Top             =   3720
      Width           =   6375
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   17
      Left            =   6000
      TabIndex        =   26
      Top             =   3360
      Width           =   1575
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   15
      Left            =   1200
      MaxLength       =   10
      TabIndex        =   24
      Top             =   3360
      Width           =   1335
   End
   Begin VB.TextBox txtString 
      Height          =   405
      Index           =   14
      Left            =   240
      TabIndex        =   27
      Top             =   8280
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   13
      Left            =   6000
      TabIndex        =   15
      Top             =   1680
      Width           =   1575
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid Grid1 
      Height          =   1095
      Left            =   480
      TabIndex        =   59
      Top             =   5640
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   1931
      _Version        =   393216
      BackColor       =   32768
      HighLight       =   2
      SelectionMode   =   1
      AllowUserResizing=   3
      RowSizingMode   =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty FontFixed {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier New"
         Size            =   9
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
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   12
      Left            =   3600
      TabIndex        =   22
      Top             =   2880
      Width           =   1335
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   8
      Left            =   1200
      TabIndex        =   19
      Top             =   2520
      Width           =   1575
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   11
      Left            =   6000
      TabIndex        =   3
      Top             =   360
      Width           =   735
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   2
      Left            =   4320
      TabIndex        =   2
      Top             =   360
      Width           =   1575
   End
   Begin MSComDlg.CommonDialog dlg1 
      Left            =   7200
      Top             =   6360
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton btnPicture 
      Caption         =   "Open "
      Height          =   375
      Index           =   0
      Left            =   12000
      Style           =   1  'Graphical
      TabIndex        =   40
      Top             =   600
      Width           =   735
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   1
      Left            =   3060
      TabIndex        =   1
      Top             =   360
      Width           =   1095
   End
   Begin VB.TextBox txtString 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   1200
      TabIndex        =   0
      Top             =   360
      Width           =   1575
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   2295
      Left            =   7920
      TabIndex        =   43
      Top             =   360
      Width           =   4815
      Begin VB.CommandButton btnTakePhoto 
         Caption         =   "Take Photo"
         Height          =   735
         Left            =   3960
         Style           =   1  'Graphical
         TabIndex        =   71
         Top             =   720
         Width           =   735
      End
      Begin VB.Image Picture1 
         Height          =   1695
         Left            =   240
         ToolTipText     =   "Click  Me To Get Picture"
         Top             =   240
         Width           =   2775
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00008000&
      Height          =   1215
      Left            =   1200
      TabIndex        =   46
      Top             =   4320
      Width           =   7815
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   16
         Left            =   5640
         TabIndex        =   38
         Top             =   840
         Width           =   1935
      End
      Begin VB.TextBox txtLeavingDate 
         Height          =   285
         Index           =   2
         Left            =   3120
         TabIndex        =   37
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox txtLeavingDate 
         Height          =   285
         Index           =   1
         Left            =   2520
         TabIndex        =   36
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox txtLeavingDate 
         Height          =   285
         Index           =   0
         Left            =   1920
         TabIndex        =   35
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   4
         Left            =   5640
         TabIndex        =   30
         Top             =   120
         Width           =   1935
      End
      Begin VB.TextBox txtArrivalDate1 
         Height          =   285
         Index           =   0
         Left            =   1920
         TabIndex        =   31
         Top             =   480
         Width           =   615
      End
      Begin VB.TextBox txtArrivalDate1 
         Height          =   285
         Index           =   1
         Left            =   2520
         TabIndex        =   32
         Top             =   480
         Width           =   495
      End
      Begin VB.TextBox txtArrivalDate1 
         Height          =   285
         Index           =   2
         Left            =   3000
         TabIndex        =   33
         Top             =   480
         Width           =   495
      End
      Begin VB.TextBox txtArrivalDate1 
         Height          =   285
         Index           =   5
         Left            =   5160
         TabIndex        =   56
         Top             =   240
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.TextBox txtArrivalDate1 
         Height          =   285
         Index           =   4
         Left            =   5160
         TabIndex        =   55
         Top             =   120
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.TextBox txtArrivalDate1 
         Height          =   285
         Index           =   3
         Left            =   5160
         TabIndex        =   54
         Top             =   240
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   6
         Left            =   5640
         TabIndex        =   34
         Top             =   480
         Width           =   1935
      End
      Begin VB.TextBox txtString 
         Height          =   255
         Index           =   5
         Left            =   5040
         TabIndex        =   39
         Top             =   240
         Width           =   735
      End
      Begin VB.TextBox txtString 
         Height          =   285
         Index           =   3
         Left            =   1920
         TabIndex        =   29
         Top             =   120
         Width           =   1575
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Class of Leaving"
         Height          =   255
         Index           =   30
         Left            =   3720
         TabIndex        =   91
         Top             =   840
         Width           =   2895
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Designation @"
         Height          =   255
         Index           =   5
         Left            =   3720
         TabIndex        =   47
         Top             =   120
         Width           =   1335
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Date of admission"
         Height          =   255
         Index           =   8
         Left            =   120
         TabIndex        =   51
         Top             =   480
         Width           =   2655
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Class of admission"
         Height          =   255
         Index           =   7
         Left            =   3720
         TabIndex        =   50
         Top             =   480
         Width           =   2895
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Leaving Date"
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   49
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Department @"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   48
         Top             =   120
         Width           =   2295
      End
   End
   Begin VB.Label Label1 
      Caption         =   "Category"
      Height          =   375
      Index           =   35
      Left            =   5040
      TabIndex        =   102
      Top             =   2880
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Caste"
      Height          =   375
      Index           =   34
      Left            =   240
      TabIndex        =   101
      Top             =   2880
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "AdharNo"
      Height          =   375
      Index           =   33
      Left            =   2760
      TabIndex        =   100
      Top             =   2040
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Annual Income"
      Height          =   495
      Index           =   32
      Left            =   240
      TabIndex        =   99
      Top             =   1920
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Transport"
      Height          =   255
      Index           =   31
      Left            =   5040
      TabIndex        =   97
      Top             =   2520
      Width           =   735
   End
   Begin VB.Image picture2 
      Height          =   615
      Left            =   12960
      Picture         =   "PersonFrm.frx":044A
      Stretch         =   -1  'True
      Top             =   240
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "Phone2"
      Height          =   255
      Index           =   23
      Left            =   5160
      TabIndex        =   89
      Top             =   4680
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Phone2"
      Height          =   255
      Index           =   22
      Left            =   3600
      TabIndex        =   88
      Top             =   8760
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Phone1"
      Height          =   255
      Index           =   18
      Left            =   2760
      TabIndex        =   87
      Top             =   8880
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Phone1"
      Height          =   255
      Index           =   17
      Left            =   720
      TabIndex        =   86
      Top             =   9120
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Occupation"
      Height          =   375
      Index           =   29
      Left            =   5040
      TabIndex        =   78
      Top             =   1200
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Reg. No"
      Height          =   375
      Index           =   28
      Left            =   240
      TabIndex        =   77
      Top             =   1560
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Adm. No"
      Height          =   375
      Index           =   27
      Left            =   2760
      TabIndex        =   76
      Top             =   1560
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Mother's Name"
      Height          =   375
      Index           =   26
      Left            =   240
      TabIndex        =   75
      Top             =   1200
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Date Of Birth"
      Height          =   375
      Index           =   25
      Left            =   240
      TabIndex        =   74
      Top             =   720
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   255
      Left            =   480
      TabIndex        =   73
      Top             =   7440
      Width           =   11175
   End
   Begin VB.Label lblUser 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   72
      Top             =   -240
      Width           =   2175
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "Person Type"
      Height          =   255
      Index           =   24
      Left            =   3600
      TabIndex        =   70
      Top             =   720
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Pin"
      Height          =   255
      Index           =   9
      Left            =   2880
      TabIndex        =   68
      Top             =   3360
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "ID"
      Height          =   255
      Index           =   21
      Left            =   6840
      TabIndex        =   66
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "Company"
      Height          =   255
      Index           =   10
      Left            =   2880
      TabIndex        =   65
      Top             =   1200
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Address"
      Height          =   255
      Index           =   11
      Left            =   5040
      TabIndex        =   64
      Top             =   2040
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Remarks"
      Height          =   255
      Index           =   20
      Left            =   240
      TabIndex        =   63
      Top             =   3720
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Email"
      Height          =   255
      Index           =   19
      Left            =   5040
      TabIndex        =   62
      Top             =   3360
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Mobile No."
      Height          =   255
      Index           =   16
      Left            =   240
      TabIndex        =   61
      Top             =   3360
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Gender @"
      Height          =   255
      Index           =   15
      Left            =   5040
      TabIndex        =   60
      Top             =   1680
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Country @"
      Height          =   255
      Index           =   14
      Left            =   2880
      TabIndex        =   58
      Top             =   2880
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Locality City  "
      Height          =   255
      Index           =   13
      Left            =   240
      TabIndex        =   57
      Top             =   2520
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Prefix @"
      Height          =   255
      Index           =   12
      Left            =   6000
      TabIndex        =   52
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "Last Name"
      Height          =   255
      Index           =   3
      Left            =   4320
      TabIndex        =   45
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Middle Name"
      Height          =   255
      Index           =   2
      Left            =   3060
      TabIndex        =   44
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "First Name"
      Height          =   255
      Index           =   1
      Left            =   1200
      TabIndex        =   42
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Person"
      Height          =   615
      Index           =   0
      Left            =   240
      TabIndex        =   41
      Top             =   360
      Width           =   855
   End
End
Attribute VB_Name = "PersonFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim focusIndex As Integer
Dim Util As New Util
Dim site As New DBSite
Dim site2 As New DBSite2
Dim db As dao.Database
Dim p As Person
Dim pictureFileName As String
Dim pfile As String
Public prnfile As String
Public prnPid As String
Public prnTid As Long
Dim isUpdate As Boolean
Dim clas As String
Dim tcControl As TextBox
Private Sub btnClearAll_Click()
  Call ClearForm
End Sub
Private Sub btnClose_Click()
    adminFrm.Show
    Unload Me
End Sub
Private Sub btnDelete_Click()
    Dim pid As String
    pid = GetPid
    If Util.isParty And Util.isPartyInLedger(site2, txtString(0).Text) Then
        MsgBox "This Account Name can not be deleted .... ", vbInformation
        Exit Sub
    End If
    site2.conn.Execute "DELETE FROM tblLedger WHERE acname='" & Trim(Me.txtString(0).Text) & "' "
    'site.conn.Execute "DELETE FROM tblPerson WHERE pid='" & pid & "' "
    site.conn.Execute "DELETE FROM tblPerson WHERE pid='" & pid & "' AND firstName='" & Trim(Me.txtString(0).Text) & "' "
    Call ClearForm
End Sub
Sub GetPersonByPID(code As String, phone As String, rNo As String)
Dim p As Person
Set p = New Person
If phone = "-1" Or rNo = "-1" Then
    p.pid = GetPid()
    If Len(p.pid) < 1 Then
      Exit Sub
    End If
    p.tid = GetTid()
 Else
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    Dim qstr As String
    If Len(rNo) < 1 Then
        qstr = "(code1 = '" & code & "' OR code2='" & code & "') AND (phone1 ='" & phone & "' OR phone2 = '" & phone & "')"
    Else
        qstr = "registrationNo = '" & rNo & "'"
    End If
    query = "SELECT tid , pid FROM tblPerson WHERE " & qstr & "AND tid IN (SELECT MAX(tid) FROM tblPerson GROUP BY pid) "
    
    'query = "SELECT tid , pid FROM tblPerson WHERE firstName = '" & Me.txtString(0).Text & "'  AND tid IN (SELECT MAX(tid) FROM tblPerson GROUP BY pid) "
    rs.Open query, site.conn
    If Not rs.EOF Then
        p.tid = rs.Fields("tid").value
        p.pid = rs.Fields("pid").value
     Else
        MsgBox "No Record Found For Phone No: '" & code & "-" & phone & "'"
        Exit Sub
    End If
    rs.Close
End If
Dim p2 As Person
Set p2 = p.GetPerson(site, p.tid)
'If Not Util.isAdmin(site) And p2.personType = GM.emp Then
 '   MsgBox "Not Authorised to view this Record.."
  '  Exit Sub
'End If
txtString(0).Text = p2.firstName
txtString(1).Text = p2.middleName
txtString(2).Text = p2.lastName
txtString(11).Text = p2.prefix
Me.txtString(19).Text = p2.pid
If Util.GetYear(p2.arivalDate) = "1901" Then
    Me.txtArrivalDate1(0).Text = ""
    Me.txtArrivalDate1(1).Text = ""
    Me.txtArrivalDate1(2).Text = ""
Else
    Me.txtArrivalDate1(0).Text = Util.GetDay(p2.arivalDate)
    Me.txtArrivalDate1(1).Text = Util.GetMonth(p2.arivalDate)
    Me.txtArrivalDate1(2).Text = Util.GetYear(p2.arivalDate)
End If
Me.txtArrivalDate1(3).Text = Util.GetHour(Now)
Me.txtArrivalDate1(4).Text = Util.GetMins(Now)
Me.txtArrivalDate1(5).Text = Util.GetAMPM(Now)
Me.txtString(3).Text = p2.dept
Me.txtString(4).Text = p2.dName
Me.txtString(5).Text = p2.whomToMeet
Me.txtString(6).Text = p2.purpose
Me.txtString(9).Text = p2.company
Me.txtString(10).Text = p2.address
Me.txtString(13).Text = p2.state
Me.txtString(8).Text = p2.city
Me.txtString(7).Text = p2.pin

Me.txtString(25).Text = p2.Income
Me.txtString(26).Text = p2.AdharNo
Me.txtString(27).Text = p2.Caste
Me.txtString(28).Text = p2.Category
' Religion
Me.txtString(12).Text = p2.country

txtString(29).Text = p.IsOBC
    Me.txtString(30).Text = p2.HasFailed
    Me.txtString(31).Text = p2.Subjects
    Me.txtString(32).Text = p2.HasPassed
    Me.txtString(33).Text = p2.HasPaidDues
    Me.txtString(34).Text = p2.HasFeeDiscount
    Me.txtString(35).Text = p2.HasNCC
    Me.txtString(36).Text = p2.NoOfMeetings
    Me.txtString(37).Text = p2.attendance
    Me.txtString(38).Text = p2.ReasonToLeave
    



'Me.cmboTransport.ItemData(Me.cmboTransport.ListIndex) = p2.routeID

Dim i As Integer

For i = 0 To Me.cmboTransport.ListCount - 1
    If Me.cmboTransport.ItemData(i) = p2.routeID Then
        Me.cmboTransport.ListIndex = i
    End If
Next


Me.txtString(14).Text = p2.code1
Me.txtString(15).Text = p2.phone1
Me.txtString(16).Text = p2.code2
Me.txtString(17).Text = p2.phone2
Me.txtString(18).Text = p2.Remarks
Me.txtString(20).Text = Util.GetPersonTypeString(CStr(p2.personType))
If Util.GetYear(p2.dob) = "1901" Then
    Me.txtDOB(0).Text = ""
    Me.txtDOB(1).Text = ""
    Me.txtDOB(2).Text = ""
Else
    Me.txtDOB(0).Text = Util.GetDay(p2.dob)
    Me.txtDOB(1).Text = Util.GetMonth(p2.dob)
    Me.txtDOB(2).Text = Util.GetYear(p2.dob)
End If
Me.txtDOB(3).Text = Util.GetHour(p2.dob)
Me.txtDOB(4).Text = Util.GetMins(p2.dob)
Me.txtDOB(5).Text = Util.GetAMPM(p2.dob)
If IsDate(p2.code1) Then
    Me.txtLeavingDate(0).Text = Util.GetDay(p2.code1)
    Me.txtLeavingDate(1).Text = Util.GetMonth(p2.code1)
    Me.txtLeavingDate(2).Text = Util.GetYear(p2.code1)
Else
    Me.txtLeavingDate(0).Text = ""
    Me.txtLeavingDate(1).Text = ""
    Me.txtLeavingDate(2).Text = ""
End If



Me.txtString(21).Text = p2.mother
Me.txtString(22).Text = p2.AdmissionNo
Me.txtString(23).Text = p2.registrationNo
Me.txtString(24).Text = p2.BoardsRollNo


pfile = Util.getPictureFileName(site, p2.pid, p2.tid)
pictureFileName = pfile
Picture1.Picture = LoadPicture(pfile)
End Sub
Sub LoadImageFromFile()
    Dlg1.Filter = "JPG Files (*.jpg)|*.jpg"
    Dlg1.ShowOpen
    pictureFileName = Dlg1.fileName
    Picture1.Picture = LoadPicture(pictureFileName)
End Sub

Private Sub btnDeleteClass_Click()
    Dim ys
    ys = MsgBox("Are you sure to delete....", vbYesNo, "Warning")
    If ys = vbYes Then
        site.conn.Execute "DELETE FROM tblPerson WHERE dept = '" & txtString(3).Text & "'"
    End If
End Sub

Private Sub btnDoc_Click()
    GM.DocPId = CInt(Me.txtString(19).Text)
    DocFrm.Show
End Sub

Private Sub btnExport_Click()
    Dim qry
    
    qry = FindPerson2
    
    Dim rs As Recordset
    Set rs = New Recordset
    
    
    
    rs.Open qry, site.conn
    Util.Export2CSV_GetRows rs, App.Path & "\", "FindResult.CSV", 1000
    Label2.Caption = "Report Created at: " + App.Path & "\FindResult.CSV"
    rs.Close
    
     
End Sub

Private Sub btnFind_Click()
   ' 222
   Dim qry
   qry = FindPerson2
End Sub

Private Sub btnPerformance_Click()
    GM.sPId = GetPid()
    GM.sname = GetName
    GM.sclass = Me.getClass
    GM.sSection = Me.GetSection
    PerfomanceFrm.Show
End Sub

Private Sub btnPicture_Click(Index As Integer)
If Index = 0 Then
    Call LoadImageFromFile
End If
End Sub
Private Sub btnSearch_Click()
    SearchFrm.Show
    Unload Me
End Sub
Private Sub btnPrint_Click()
    Dim clas As String
    clas = Trim(txtString(0).Text)
    If Len(clas) > 0 Then
        Dim rs As Recordset
        Set rs = New Recordset
        Dim subQuery, colStr   As String
        subQuery = "SELECT MAX(tid) FROM tblPerson  GROUP BY pid"
        colStr = " tid, pid, firstName+' '+middlename+' '+lastName AS Name, registrationNo, phone1, company, Address, city, country, state, pin"
        SearchQuery = "SELECT " & colStr & " FROM tblPerson WHERE dept IN ('" & clas & "') AND tid IN (" & subQuery & ") ORDER BY firstname"
        rs.Open SearchQuery, site.conn
        If Not rs.EOF Then
           rs.MoveFirst
           Dim XX, YY As Long
           XX = 100
           YY = 500
           Dim spaceY As Long
           spaceY = 350
           Dim spaceX, col1, col2, col3, col4, col5, col6, col7, col8 As Long
           spaceX = 900
           col1 = spaceX
           col2 = spaceX * 2
           col3 = spaceX * 4
           col4 = spaceX * 5
           col5 = spaceX * 6.5
           col6 = spaceX * 10.5
           col7 = spaceX * 11.5
           Printer.CurrentX = 100
           Printer.CurrentY = 100
           Printer.FontSize = 12
           Printer.Print "Scholar Register for class " & clas & " as on " & Format(Now, "dd-mmm-yy")
           Printer.FontSize = 10
           Printer.CurrentX = XX
           Printer.CurrentY = YY
           Printer.Print "Sl No."
           Printer.CurrentX = XX + col1
           Printer.CurrentY = YY
           Printer.Print "SR No."
           Printer.CurrentX = XX + col2
           Printer.CurrentY = YY
           Printer.Print "Name of Student"
           Printer.CurrentX = XX + col3
           Printer.CurrentY = YY
           Printer.Print "DOB"
           Printer.CurrentX = XX + col4
           Printer.CurrentY = YY
           Printer.Print "Father's Name"
           Printer.CurrentX = XX + col5
           Printer.CurrentY = YY
           Printer.Print "Address"
           Printer.CurrentX = XX + col6
           Printer.CurrentY = YY
           Printer.Print "Phone"
           Printer.CurrentX = XX + col7
           Printer.CurrentY = YY
           Printer.Print "House"
           YY = YY + spaceY + 200
           Dim slno As Long
           slno = 0
           While rs.AbsolutePosition <> adPosEOF
               Dim pid As String
               Dim pName As String
               Dim company As String
               Dim address As String
               Dim city As String
               Dim state As String
               Dim registrationNo As String
               Dim tid As String
               Dim phone1 As String
               Dim country As String
               tid = Util.CheckNull(rs.Fields("tid").value)
               pid = Util.CheckNull(rs.Fields("pid").value)
               pName = Util.CheckNull(rs.Fields("Name").value)
               company = Util.CheckNull(rs.Fields("company").value)
               address = Util.CheckNull(rs.Fields("Address").value) & " " & Util.CheckNull(rs.Fields("city").value)
               city = Util.CheckNull(rs.Fields("city").value)
               state = Util.CheckNull(rs.Fields("state").value)
               registrationNo = Util.CheckNull(rs.Fields("registrationNo").value)
               phone1 = Util.CheckNull(rs.Fields("phone1").value)
               country = Util.CheckNull(rs.Fields("country").value)
               slno = slno + 1
               Printer.FontSize = 8
               Printer.CurrentX = XX
               Printer.CurrentY = YY
               Printer.Print slno
               Printer.CurrentX = XX + col1
               Printer.CurrentY = YY
               Printer.Print registrationNo
               Printer.CurrentX = XX + col2
               Printer.CurrentY = YY
               Printer.Print pName
               Printer.CurrentX = XX + col3
               Printer.CurrentY = YY
               Printer.Print "10-05-2003"
               Printer.CurrentX = XX + col4
               Printer.CurrentY = YY
               Printer.Print company
               Printer.CurrentX = XX + col5
               Printer.CurrentY = YY
               Printer.Print address
               Printer.CurrentX = XX + col6
               Printer.CurrentY = YY
               Printer.Print phone1
               Printer.CurrentX = XX + col7
               Printer.CurrentY = YY
               Printer.Print country
               YY = YY + spaceY
               rs.MoveNext
           Wend
           Printer.EndDoc
        End If
    End If
End Sub

Private Sub btnPrintCC_Click()
    
    If DE1.Connection1.state = adStateOpen Then
        DE1.Connection1.Close
    End If
    
    If DE1.Connection1.state = adStateClosed Then
        
        'DE1.Connection1.connectionString = "Provider=SQLOLEDB.1;Password=4495;Persist Security Info=True;User ID=sa;Initial Catalog=SchoolGuruNanakDB;Data Source=Localhost"
        DE1.Connection1.connectionString = GM.connectionString
        DE1.Connection1.Open
       
    End If
    
    
    DE1.Command1 (GetTid())
    'CCReport_DBS.Show
    'CCReport_ABC.Show
    CCReport_MEPS.Show
    
            
    'CCReport_MM.Show

End Sub

Private Sub btnPrintForm_Click()
    Dim rs As Recordset
    Set rs = New Recordset
    Dim subQuery, colStr   As String
    subQuery = " SELECT MAX(tid) FROM tblPerson WHERE pid='" & Me.txtString(19) & "' GROUP BY pid "
    colStr = " tid, pid, firstName+' '+middlename+' '+lastName AS Name , company, remarks , phone1 , phone2, Address, city, state, RegistrationNo, admissionNo, DOB, country, mother, code1, code2, dept, dname, purpose, arrival, AdharNo, BoardsRollNo, Caste"
    SearchQuery = "SELECT " & colStr & " FROM tblPerson WHERE tid IN (" + subQuery + ") "
    rs.Open SearchQuery, site.conn
    Dim startX As Long
    startX = 1000
    If Not rs.EOF Then
        Dim count As Integer
        rs.MoveFirst
        Dim cardTextX, cardTextY, paraY1, paraY2 As Long
        Dim label1X, label2X, label3X, data1X, data2X, data3X, colon1X, colon2X, colon3X, lineY, lineMaxY As Long
        cardTextX = 1500
        cardTextY = 150
        startX = 500
        colon1X = 2500
        data1X = 3200
        label2X = 6500
        colon2X = 8500
        data2X = 8700
        label3X = 1700
        colon3X = 2400
        data3X = 2500
        paraY1 = 400
        paraY2 = 800
        lineY = 600
        lineMaxY = 11500
        'Printer.PaintPicture Picture2.Picture, startX, startY + 200, 1500, 1500
        
            startY = 200
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
       
        'Printer.Line (cardLineX + evenX, cardLineY)-(cardLineX + lineX2 + evenX, cardLineY)
        cardTextY = cardTextY + 500 + 900 + 1000
        Printer.FontBold = True
        Printer.DrawWidth = 5
        Printer.Line (startX - 150, cardTextY)-(startX - 150, lineMaxY)
        Printer.Line (10500, cardTextY)-(10500, lineMaxY)
        Printer.Line (startX - 150, cardTextY)-(10500, cardTextY)
        While rs.AbsolutePosition <> adPosEOF
            Dim pid As String
            Dim pName As String
            Dim fathr As String
            Dim Remarks As String
            Dim dept As String
            Dim address As String
            Dim city As String
            Dim house As String
            Dim phone As String
            Dim phone2 As String
            Dim dob  As String
            Dim rNo, bNo, aNo, mother, sex, clas, admClas, admDate, lastSchool, leavingDate, leavingClas As String
            
            Dim AdharNo, Occupation As String
            
            
            ' 4444
            
            
            pid = Util.CheckNull(rs.Fields("pid").value)
            aNo = Util.CheckNull(rs.Fields("admissionNo").value)
            rNo = Util.CheckNull(rs.Fields("RegistrationNo").value)
            pName = Util.CheckNull(rs.Fields("Name").value)
            fathr = Util.CheckNull(rs.Fields("company").value)
            mother = Util.CheckNull(rs.Fields("mother").value)
            dob = Format(Util.CheckNull(rs.Fields("dob").value), "dd-mmm-yyyy")
            sex = Util.CheckNull(rs.Fields("state").value)
            address = Util.CheckNull(rs.Fields("Address").value)
            city = Util.CheckNull(rs.Fields("city").value)
            phone = Util.CheckNull(rs.Fields("phone1").value)
            phone2 = Util.CheckNull(rs.Fields("phone2").value)
            clas = Util.CheckNull(rs.Fields("dept").value)
            admClas = Util.CheckNull(rs.Fields("purpose").value)
            admDate = Format(Util.CheckNull(rs.Fields("arrival").value), "dd-mmm-yyyy")
            lastSchool = Util.CheckNull(rs.Fields("dName").value)
            leavingDate = Util.CheckNull(rs.Fields("code1").value)
            leavingClas = Util.CheckNull(rs.Fields("code2").value)
            house = Util.CheckNull(rs.Fields("country").value)
            Remarks = Util.CheckNull(rs.Fields("remarks").value)
            
            AdharNo = Util.CheckNull(rs.Fields("AdharNo").value)
            Occupation = Util.CheckNull(rs.Fields("BoardsRollNo").value)
            Caste = Util.CheckNull(rs.Fields("Caste").value)
            
            
            
            
            count = count + 1
            ' Printer.FontBold = True
             Printer.FontSize = 10
             
             cardTextY = cardTextY + 100
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Admission No."
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print rNo
             
             
             Printer.CurrentX = startX + label2X
             Printer.CurrentY = cardTextY
             Printer.Print "Registration No."
             Printer.CurrentX = startX + colon2X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data2X
             Printer.CurrentY = cardTextY
             Printer.Print aNo
             
             Printer.Line (startX - 150, cardTextY + lineY - 250)-(10500, cardTextY + lineY - 250)
             
             cardTextY = cardTextY + paraY2
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Name"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print UCase(pName)
             
             'Printer.PaintPicture Picture1.Picture, startX + 7500, cardTextY - 300, Picture1.Picture.Width / 12, Picture1.Picture.Height / 12
             
             cardTextY = cardTextY + paraY1
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Date Of Birth"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print UCase(dob)
             
             cardTextY = cardTextY + paraY1
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Gender"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print sex
                         
             cardTextY = cardTextY + paraY1
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Adhar No"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print AdharNo
                         
                         
             Printer.Line (startX - 150, cardTextY + lineY)-(10500, cardTextY + lineY)
             cardTextY = cardTextY + paraY2
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Father's Name"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print fathr
             
             cardTextY = cardTextY + paraY1
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Mother's Name"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print mother
             
             cardTextY = cardTextY + paraY1
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Address"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print address + ", " + city
             
             cardTextY = cardTextY + paraY1
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Father Occupation"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print Occupation
             
             cardTextY = cardTextY + paraY1
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Phone"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print phone & ", " & phone2
             
             Printer.Line (startX - 150, cardTextY + lineY)-(10500, cardTextY + lineY)
             
             cardTextY = cardTextY + paraY2
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Present Class"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print clas
             
             
             cardTextY = cardTextY + paraY2
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Caste"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print Caste
             
             
             Printer.CurrentX = startX + label2X
             Printer.CurrentY = cardTextY
             Printer.Print "Religion"
             Printer.CurrentX = startX + colon2X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data2X
             Printer.CurrentY = cardTextY
             Printer.Print house
             
             
             Printer.Line (startX - 150, cardTextY + lineY)-(10500, cardTextY + lineY)
             
             cardTextY = cardTextY + paraY2
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Date of Admission"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print admDate
                          
             Printer.CurrentX = startX + label2X
             Printer.CurrentY = cardTextY
             Printer.Print "Class of Admission"
             Printer.CurrentX = startX + colon2X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data2X
             Printer.CurrentY = cardTextY
             Printer.Print admClas
             
             cardTextY = cardTextY + paraY1
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Last School"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print lastSchool
             
             Printer.Line (startX - 150, cardTextY + lineY)-(10500, cardTextY + lineY)
             
             cardTextY = cardTextY + paraY2
             Printer.CurrentX = startX
             Printer.CurrentY = cardTextY
             Printer.Print "Remarks"
             Printer.CurrentX = startX + colon1X
             Printer.CurrentY = cardTextY
             Printer.Print ":"
             Printer.CurrentX = startX + data1X
             Printer.CurrentY = cardTextY
             Printer.Print Remarks
             
             
             
          rs.MoveNext
         Wend
         
         
         cardTextY = cardTextY + 5000
         Printer.FontSize = 10
         Printer.Line (startX - 150, lineMaxY)-(10500, lineMaxY)
         Printer.CurrentX = startX
         Printer.CurrentY = lineMaxY + 2000
         Printer.Print "                      Parent's Sign                                                            Principal's Sign " & Format(Now, "dd-mmm-yyyy")
              
         
         
         cardTextY = cardTextY + 2000
         Printer.FontSize = 7
         Printer.Line (startX - 150, lineMaxY)-(10500, lineMaxY)
         Printer.CurrentX = startX
         Printer.CurrentY = lineMaxY + 2000
        ' Printer.Print "Form Printed on " & Format(Now, "dd-mmm-yyyy")
        
         Printer.EndDoc
      End If
      
End Sub
Private Sub btnPrintTC_Click1()
        Dim pid As String
        pid = txtString(19).Text
        Dim tcNo As Long
        If Me.btnPrintTC.Caption = "Re-Print &TC" Then
            tcNo = txtString(7).Text
        Else
            Set p = New Person
            tcNo = p.getID(site.conn, "tcid")
        End If
        Dim rs As Recordset
        Set rs = New Recordset
        Dim subQuery, colStr   As String
        subQuery = "SELECT MAX(tid) FROM tblPerson  WHERE pid= '" & pid & "' GROUP BY pid"
        colStr = " tid, pid, firstName+' '+middlename+' '+lastName AS Name, dob, RegistrationNo, company, state, arrival, dname, code1, code2"
        SearchQuery = "SELECT " & colStr & " FROM tblPerson WHERE tid IN (" & subQuery & ")"
        rs.Open SearchQuery, site.conn
        If Not rs.EOF Then
           rs.MoveFirst
           Dim XX, YY, spaceX, spaceY, xxx, paragraphX, paragraphY, para1, para2, dotY As Long
           XX = 700
           YY = 500
           spaceX = 900
           spaceY = 500
           xxx = 1500
           'paragraphX = 1000
           paragraphX = 1500
           paragraphY = 700
           para1 = 300
           para2 = 700
           dotY = 75
           Printer.CurrentX = XX + 9000
           Printer.CurrentY = YY - 150
           Printer.FontSize = 9
           'Printer.Print "Phone: 2680881"
           Printer.PaintPicture Picture2.Picture, XX, YY, 1500, 1500
            Dim startY
            startY = 300
            Printer.FontSize = 18
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationName) / 2)
            Printer.CurrentY = startY
            Printer.Print GM.registrationName
            Printer.FontSize = 10
            startY = startY + 500
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAddress) / 2)
            Printer.CurrentY = startY
            Printer.Print GM.registrationAddress
            startY = startY + 300
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAffiliation) / 2)
            Printer.CurrentY = startY
            Printer.Print GM.registrationAffiliation
            
           
           
           Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth("TRANSFER CERTIFICATE") / 2) - 200
           YY = YY + 1000
           Printer.CurrentY = YY + spaceY
           Printer.FontSize = 12
           Printer.FontUnderline = True
           Printer.FontBold = True
           Printer.Print "TRANSFER CERTIFICATE"
           Printer.FontUnderline = False
           Printer.FontBold = False
           Printer.CurrentX = XX
           Printer.CurrentY = YY + spaceY + spaceY + spaceY + 500
           Printer.FontSize = 9
           Printer.Print "TC Serial No.- "
           Printer.CurrentX = XX + 1200
           Printer.CurrentY = YY + spaceY + spaceY + spaceY + 500
           Printer.FontSize = 9
           Printer.FontBold = True
           Printer.Print tcNo
           Printer.FontBold = False
           Printer.CurrentX = XX + Len("TC Serial No.- ") * 80
           Printer.CurrentY = YY + spaceY + spaceY + spaceY + 500 + dotY
           Printer.Print "..................."
           Dim slno As Long
           slno = 0
           While rs.AbsolutePosition <> adPosEOF
                Dim tid As String
                Dim pName As String
                Dim dob As String
                Dim sex As String
                Dim fatherName As String
                Dim registrationNo As String
                Dim admissionDate As String
                Dim admissionClass As String
                Dim lastSchool As String
                Dim leavingDate As String
                Dim leavingClass As String
                tid = Util.CheckNull(rs.Fields("tid").value)
                pName = Util.CheckNull(rs.Fields("Name").value)
                dob = Format(Util.CheckNull(rs.Fields("dob").value), "dd-mmm-yyyy")
                sex = Util.CheckNull(rs.Fields("state").value)
                fatherName = Util.CheckNull(rs.Fields("company").value)
                registrationNo = Util.CheckNull(rs.Fields("RegistrationNo").value)
                admissionDate = Format(Util.CheckNull(rs.Fields("arrival").value), "dd-mmm-yyyy")
                lastSchool = Util.CheckNull(rs.Fields("dname").value)
                leavingDate = Format(Util.CheckNull(rs.Fields("code1").value), "dd-mmm-yyyy")
                leavingClass = Util.CheckNull(rs.Fields("code2").value)
                slno = slno + 1
                Printer.CurrentX = XX + 7700
                Printer.CurrentY = YY + spaceY + spaceY + spaceY + 500
                Printer.FontSize = 9
                Printer.Print "Registration No. - "
                Printer.CurrentX = XX + 9300
                Printer.CurrentY = YY + spaceY + spaceY + spaceY + 500
                Printer.FontSize = 9
                Printer.FontBold = True
                Printer.Print registrationNo
                Printer.FontBold = False
                
                Printer.CurrentX = XX + 9300
                Printer.CurrentY = YY + spaceY + spaceY + spaceY + 500 + dotY
                Printer.Print "................"
                
                Printer.CurrentX = paragraphX
                YY = YY + 2800
                Printer.CurrentY = YY
                Printer.FontSize = 10
                Printer.Print " This is to certify that "
                Printer.CurrentX = XX + 100 + 3000
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print UCase(pName)
                Printer.FontBold = False
                Printer.CurrentX = XX + 100 + 3000
                Printer.CurrentY = YY + dotY
                Printer.Print "..................................................................................................................................."
                
                
                Dim son, he, his As String
                son = " son "
                he = " He "
                his = " His "
                If Trim(sex) = "Female" Then
                   son = " daughter "
                   he = " She "
                   his = " Her "
                End If
                Printer.CurrentX = XX
                YY = YY + para1
                Printer.CurrentY = YY
                Printer.Print son & " of "
                Printer.CurrentX = XX + 100 + 1200
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print fatherName
                Printer.FontBold = False
                Printer.CurrentX = XX + 100 + 1200
                Printer.CurrentY = YY
                Printer.Print "........................................................................................................................................................"
                
                Printer.CurrentX = XX
                YY = YY + para1
                Printer.CurrentY = YY
                Printer.Print " was admitted into this school on the "
                Printer.CurrentX = XX + 3500
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print admissionDate
                Printer.FontBold = False
                Printer.CurrentX = XX + 3500
                Printer.CurrentY = YY + dotY
                Printer.Print ".........................................................................................."
                Printer.CurrentX = XX + 8000
                Printer.CurrentY = YY
                Printer.Print " on a transfer from "
                Printer.CurrentX = XX
                YY = YY + para1
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print " " & lastSchool
                Printer.FontBold = False
                Printer.CurrentX = XX
                Printer.CurrentY = YY + dotY
                Printer.Print "...................................................................................................."
                Printer.CurrentX = XX + 7000
                Printer.CurrentY = YY
                Printer.Print " and left on "
                Printer.CurrentX = XX + 8200
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print leavingDate
                Printer.FontBold = False
                Printer.CurrentX = XX + 8200
                Printer.CurrentY = YY + dotY
                Printer.Print "........................."
                
                Printer.CurrentX = XX
                YY = YY + para1
                Printer.CurrentY = YY
                Printer.Print " with a "
                Printer.CurrentX = XX + 800
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print "Good"
                Printer.CurrentX = XX + 800
                Printer.CurrentY = YY + dotY
                Printer.Print "..............................................."
                Printer.FontBold = False
                Printer.CurrentX = XX + 1500 + 1000
                Printer.CurrentY = YY
                Printer.Print " character. "
                Printer.CurrentX = paragraphX
                YY = YY + paragraphY
                Printer.CurrentY = YY
                Printer.Print he & " was then studing in the "
                Printer.CurrentX = XX + 3500
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print leavingClass
                Printer.CurrentX = XX + 3500
                Printer.CurrentY = YY + dotY
                Printer.Print "............................................................................................."
                Printer.FontBold = False
                Printer.CurrentX = XX + 9000
                Printer.CurrentY = YY
                Printer.Print " class of "
                Printer.CurrentX = XX
                YY = YY + para1
                Printer.CurrentY = YY
                Printer.Print " the school year being from "
                
                Dim startYear As String
                Dim endYear As String
                
            '    leavingDate1 = "15-02-2006"
        'If CInt(Format(leavingDate1, "mm")) < 5 Then
         '   startYear1 = Util.GetYear(CDate(leavingDate1)) - 1
        'Else
         '   startYear1 = Util.GetYear(CDate(leavingDate1))
        'End If
        'endYear1 = Format("01-01-" + CStr(CInt(startYear1) + 1), "yyyy")
        'tartYear1 = Format("01-01-" + CStr(startYear1), "yyyy")
        
                
                If CInt(Format(leavingDate, "mm")) < 5 Then
                    startYear = Util.GetYear(CDate(leavingDate)) - 1
                Else
                    startYear = Util.GetYear(CDate(leavingDate))
                End If
                endYear = Format("01-01-" + CStr(CInt(startYear) + 1), "yyyy")
                startYear = Format("01-01-" + startYear, "yyyy")
                Printer.CurrentX = XX + 3000
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print " April " + startYear
                Printer.CurrentX = XX + 4000
                Printer.CurrentY = YY
                Printer.FontBold = False
                Printer.Print " to "
                Printer.CurrentX = XX + 3000
                Printer.CurrentY = YY + dotY
                Printer.Print "..............................."
                Printer.CurrentX = XX + 5000
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print " March " + endYear
                Printer.CurrentX = XX + 5000
                Printer.CurrentY = YY + dotY
                Printer.Print "..............................."
                
                Printer.FontUnderline = False
                Printer.FontBold = False
                Printer.CurrentX = paragraphX
                YY = YY + para2
                Printer.CurrentY = YY
                Printer.Print " All sums due to this school on" & his & "account have been remitted or satisfactorily arranged for."
                Printer.CurrentX = paragraphX
                YY = YY + para2
                Printer.CurrentY = YY
                Printer.Print his & " date of birth, according to the Admission Register is (In figures) "
                Printer.CurrentX = XX + 7600
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print Format(dob, "dd-mmm-yyyy")
                Printer.CurrentX = XX + 7600
                Printer.CurrentY = YY + dotY
                Printer.Print "............................................"
                
                Printer.FontBold = False
                Printer.CurrentX = XX
                YY = YY + para1
                Printer.CurrentY = YY
                Printer.Print " (In words) "
                Printer.CurrentX = XX + 1000
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print Util.getDateInWords(Format(dob, "dd-mmm-yyyy"))
                Printer.CurrentX = XX + 1000
                Printer.CurrentY = YY + dotY
                Printer.Print "........................................................................................................................................................"
                
                Printer.FontBold = False
                Printer.CurrentX = paragraphX
                YY = YY + para2
                Printer.CurrentY = YY
                Printer.Print " Promotion has been (**)"
                Dim i As Integer
                For i = 0 To 2
                    If opPromotion(i).value = True Then
                        Exit For
                    End If
                Next
                Printer.CurrentX = paragraphX + 2500
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print opPromotion(i).Caption + ". "
                Printer.FontBold = False
                Printer.CurrentX = paragraphX + 2500
                Printer.CurrentY = YY + dotY
                Printer.Print "......................................................................................................................"
                Printer.CurrentX = XX
                YY = YY + paragraphY
                Printer.CurrentY = YY
                Printer.Print "Date: " & Format(Now, "dd-mmm-yyyy")
                Printer.CurrentX = XX + 100 + 5000 + 3000
                YY = YY + paragraphY
                Printer.CurrentY = YY
                Printer.FontItalic = True
                Printer.Print "Principal"
                Printer.FontItalic = False
                Printer.CurrentX = paragraphX
                YY = YY + paragraphY + 500
                Printer.CurrentY = YY
                Printer.Print "COUNTER SIGNED"
                Printer.DrawWidth = 5
                Printer.Line (XX, YY + 500)-(XX + 10500, YY + 500), , BF
                Printer.CurrentX = XX + 100 + 5000 + 2000
                YY = YY + paragraphY + 200
                Printer.CurrentY = YY
                Printer.FontSize = 6
                Printer.Print "TC generated by SchoolManger software Mob. 94111 49673"
                rs.MoveNext
                site.conn.Execute "UPDATE tblPerson SET dept= 'TC Given', pin='" & tcNo & "' , remarks=remarks+' TC Given on '& '" & Format(Now, "dd-mmm-yyyy") & "' WHERE  tid = (" & tid & ")"
           Wend
           Printer.EndDoc
        End If
End Sub

Private Sub btnTakePhoto_Click()
    Call Util.OpenCamera(site)
End Sub


Private Sub Command1_Click()

End Sub

Private Sub btnTC_Click()
    
    'MsgBox DE1.Connection1.state
    'open
    
    If DE1.Connection1.state = adStateOpen Then
          DE1.Connection1.Close
    End If
    
    If DE1.Connection1.state = adStateClosed Then
        
        'DE1.Connection1.connectionString = "Provider=SQLOLEDB.1;Password=4495;Persist Security Info=True;User ID=sa;Initial Catalog=SchoolGuruNanakDB;Data Source=Localhost"
        DE1.Connection1.connectionString = GM.connectionString
        DE1.Connection1.Open
    End If
    
    DE1.Command2 (GetTid())
    'TCDataReport.Show
    'TCRpt_SGNSS.Show
    
    TCRpt_GardenValley.Show
    'TCRpt_DPS.Show
    
    
     'TCRpt.Show
    
End Sub

Private Sub Form_Load()
    Me.KeyPreview = True
    Call SetProperties
    Call updateButtons
    Call setGridProperties
    Me.lblUser.Caption = "User: " + Util.GetName(site, site.EnterBy)
    Call Util.SetFont(Me)
    Call Util.FormResolution(Me)
    If Len(GM.searchPId) > 0 Then
        GM.EnterBy = GM.principalUserID
        Dim p As Person
        Set p = New Person
        p.pid = GM.searchPId
        p.tid = GM.searchTId
        Call Me.GetPersonByPID("", "-1", "")
    End If
    
'    Me.Picture = adminFrm.Picture
    
    
    
End Sub
Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = 27 Then
        Call btnClose_Click
    End If
    
End Sub
Private Sub btnSave_Click()
  'On Error GoTo errHandler
    Set p = New Person
    p.tid = p.getID(site.conn, "tid")
    If Me.txtString(19).Text = "New" Then
        p.pid = p.getID(site.conn, "pid")
        isUpdate = False
    Else
        p.pid = Me.txtString(19).Text
        isUpdate = True
    End If
    p.OpID = site.EnterBy
    p.firstName = txtString(0).Text
    p.middleName = txtString(1).Text
    p.lastName = txtString(2).Text
    p.prefix = txtString(11).Text
    p.dept = txtString(3).Text
    p.dName = txtString(4).Text
    If Len(Me.txtArrivalDate1(0).Text) > 0 Then
        If Util.CheckDate(Me.txtArrivalDate1(0).Text, Me.txtArrivalDate1(1).Text, Me.txtArrivalDate1(2).Text, Me.txtArrivalDate1(3).Text, Me.txtArrivalDate1(4).Text, Me.txtArrivalDate1(5).Text) = False Then
            MsgBox "Not A Valid Date..?"
            Me.txtArrivalDate1(0).SetFocus
            Exit Sub
        Else
          p.arivalDate = Util.GetDate(Me.txtArrivalDate1(0).Text, Me.txtArrivalDate1(1).Text, Me.txtArrivalDate1(2).Text, "10", "10", "am")
        End If
    Else
        p.arivalDate = Util.GetDate("01", "01", "1901", "10", "10", "am")
    End If
    p.whomToMeet = Me.txtString(5).Text
    p.purpose = Me.txtString(6).Text
    p.company = Me.txtString(9).Text
    p.address = Me.txtString(10).Text
    p.state = Me.txtString(13).Text
    p.city = Me.txtString(8).Text
    
    
    p.pin = Me.txtString(7).Text
    
    If Util.isPrincipal Then
        p.routeID = Me.cmboTransport.ItemData(Me.cmboTransport.ListIndex)
    End If
    
    'p.code1 = Me.txtString(14).Text
    ' leaving date
    If Util.isPrincipal And Len(Me.txtLeavingDate(0).Text) > 0 Then
        If Util.CheckDate(Me.txtLeavingDate(0).Text, Me.txtLeavingDate(1).Text, Me.txtLeavingDate(2).Text, "10", "10", "AM") = False Then
           MsgBox "Not A Valid Date..?"
           Me.txtLeavingDate(0).SetFocus
           Exit Sub
        Else
           p.code1 = Format(Util.GetDate(Me.txtLeavingDate(0).Text, Me.txtLeavingDate(1).Text, Me.txtLeavingDate(2).Text, "10", "10", "AM"), "mm-dd-yyyy")
        End If
    Else
        p.code1 = ""
    End If
    p.phone1 = Me.txtString(15).Text
    p.code2 = Me.txtString(16).Text
    p.phone2 = Me.txtString(17).Text
    p.Remarks = Me.txtString(18).Text
    If Util.isPrincipal And Len(Me.txtDOB(0).Text) > 0 Then
        If Util.CheckDate(Me.txtDOB(0).Text, Me.txtDOB(1).Text, Me.txtDOB(2).Text, Me.txtDOB(3).Text, Me.txtDOB(4).Text, Me.txtDOB(5).Text) = False Then
           MsgBox "Not A Valid Date..?"
           Me.txtDOB(0).SetFocus
           Exit Sub
        Else
           p.dob = Util.GetDate(Me.txtDOB(0).Text, Me.txtDOB(1).Text, Me.txtDOB(2).Text, Me.txtDOB(3).Text, Me.txtDOB(4).Text, Me.txtDOB(5).Text)
        End If
    Else
        p.dob = Util.GetDate("01", "01", "1901", "10", "10", "am")
    End If
    p.mother = Me.txtString(21).Text
    p.registrationNo = Me.txtString(23).Text
    p.AdmissionNo = Me.txtString(22).Text
    p.BoardsRollNo = Me.txtString(24).Text
    
    p.Income = Me.txtString(25).Text
    p.AdharNo = Me.txtString(26).Text
    p.Caste = Me.txtString(27).Text
    p.Category = Me.txtString(28).Text
    p.country = Me.txtString(12).Text
    
    
    
    p.IsOBC = txtString(29).Text
    p.HasFailed = Me.txtString(30).Text
    p.Subjects = Me.txtString(31).Text
    p.HasPassed = Me.txtString(32).Text
    p.HasPaidDues = Me.txtString(33).Text
    p.HasFeeDiscount = Me.txtString(34).Text
    p.HasNCC = Me.txtString(35).Text
    p.NoOfMeetings = Me.txtString(36).Text
    p.attendance = Me.txtString(37).Text
    p.ReasonToLeave = Me.txtString(38).Text
    
    
    p.personType = Util.GetPersonTypeInt(Me.txtString(20).Text)
    If Util.isParty Then
        '********* amount, DRCR, Group
         If Util.ValiDateAmount(Me.txtString(21).Text, Me.txtString(21)) = False Then
            Exit Sub
        End If
    End If
    If Util.isPrincipal And Len(txtString(3).Text) < 1 Then
        Y = MsgBox("Class with section for the student is not entered. Do you want to enter now?", vbYesNo, "Student Class ")
        If Y = vbYes Then
            Me.txtString(3).SetFocus
            Exit Sub
        End If
    End If
    If Util.isPrincipal And (Len(p.code1) > 0 Or p.dept = "Pass Out" Or p.dept = "TC Given") Then   'leaving date
        If Not checkTCData(p) Then
            Util.FOCUSME tcControl
            tcControl.SetFocus
            Exit Sub
        Else
            If Not p.dept = "TC Given" Then
                p.dept = "Pass Out"
            End If
        End If
    End If
    If Util.isParty Then
        If Trim(txtString(0).Text) = "Cash" Then
            If Trim(txtString(23).Text) <> "Cash" Then
                MsgBox "Group of Cash can not be altered..."
                Me.txtString(23).SetFocus
                Exit Sub
            End If
        End If
        If Trim(txtString(0).Text) = "Student Account" Then
            If Trim(txtString(23).Text) <> "Student Account" Then
                MsgBox "Group of Student Account can not be altered..."
                Me.txtString(23).SetFocus
                Exit Sub
            End If
        End If
        If Trim(txtString(23).Text) = "Cash" Then
            If Trim(txtString(0).Text) <> "Cash" Then
                MsgBox "Name of Cash can not be altered..."
                Me.txtString(0).SetFocus
                Exit Sub
            End If
        End If
        If Trim(txtString(23).Text) = "Student Account" Then
            If Trim(txtString(0).Text) <> "Student Account" Then
                MsgBox "Name of Student Account can not be altered..."
                Me.txtString(0).SetFocus
                Exit Sub
            End If
        End If
    End If
    site.conn.BeginTrans
    p.SavePerson site
    
    'MsgBox p.tid
    'MsgBox p.dob
    Call Util.SetDOBInWords(site, p.dob, p.tid)
    
    site.conn.CommitTrans
    
    If Picture1.Picture <> 0 Then
        site.conn.BeginTrans
        'pictureFileName = App.Path & "\party.jpg"
        p.SaveImage site, pictureFileName
        site.conn.CommitTrans
    End If
    
    
    If Util.isParty Then
        Dim cid As Long
        cid = p.getID(site.conn, "cid")
        site2.conn.Execute "DELETE FROM tblLedger WHERE ACname='" & p.firstName & "' AND source='OB'"
        Dim Dte As Date
        Dte = Util.GetDate("01", "04", "20" & Util.GetSettingHome(site2, "financialyear"), "01", "01", "am")
        Call Util.saveLedger(site2, cid, Dte, p.firstName, "Opening Balance", CDbl(p.mother), "Cash", "", True, p.AdmissionNo, -1, "")
    End If
    Call ClearForm
 End Sub
Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If Not site Is Nothing Then
        Set site = Nothing
    End If
End Sub
Public Sub SetProperties()
Dim i As Integer
Picture1.BorderStyle = 1
Picture1.Stretch = True
Me.Caption = "CollegeManager"
'Me.BackColor = myBlue
Label1(0).Caption = "Person"
Label1(1).Caption = "First Name"
Label1(2).Caption = "Middle Name"
Label1(3).Caption = "Last Name"
Label1(4).Caption = "Department"
Label1(5).Caption = "Designation"
'Label1(7).Caption = "Purpose"
Label1(7).Caption = "Class of admission"
Label1(6).Caption = "EmployeeID"
Label1(8).Caption = "Joining Date"
Label1(10).Caption = "Company"
Label1(11).Caption = "Address"
Label1(12).Caption = "Prefix "
Label1(13).Caption = "Locality && City"
If Util.isPrincipal Then
    Label1(14).Caption = "Religion "
Else
    Label1(14).Caption = "Country"
End If
Call ClearTxtString
If Util.isAdmin(site) Or Util.isPrincipal Then
    Label1(7).Caption = ""
    Label1(6).Caption = ""
    Me.Label1(10).Caption = "Basic Salary"
End If

Label1(31).Visible = Util.isPrincipal
Me.cmboTransport.Visible = Util.isPrincipal


If Util.isPrincipal Then
    Me.Label1(10).Caption = "Father Name"
    Me.Label1(4).Caption = "Present Class"
    Me.Label1(5).Caption = "Last School"
    Label1(7).Caption = "Class of admission"
    Me.Label1(8).Caption = "Date of admission"
    Me.Label1(9).Caption = "House@"
    Label1(6).Caption = "Leaving Date"
    
    Call FillTransport
    
End If
Me.txtString(16).Visible = Util.isPrincipal
Label1(30).Visible = Util.isPrincipal
Label1(9).Visible = Util.isPrincipal
txtString(7).Visible = Util.isPrincipal


txtString(25).Visible = Util.isPrincipal
txtString(26).Visible = Util.isPrincipal
txtString(27).Visible = Util.isPrincipal
txtString(28).Visible = Util.isPrincipal

Label1(32).Visible = Util.isPrincipal
Label1(33).Visible = Util.isPrincipal
Label1(34).Visible = Util.isPrincipal
Label1(35).Visible = Util.isPrincipal

For i = 0 To Me.Label1.count - 1
    Label1(i).FontBold = False
    Label1(i).BackStyle = 0
Next
Label2.FontBold = True
Label2.BackStyle = 0
Label2.Caption = ""
Label2.Left = Me.txtString(0).Left

Frame1.Caption = "Picture"
Frame1.BackColor = Me.BackColor
Me.Frame2.Left = Me.txtString(0).Left
If Util.isAdmin(site) Then
    Me.Frame2.Caption = ""
End If
btnPicture(0).Caption = "Open"
For i = 0 To Me.btnPicture.count - 1
    btnPicture(i).Font.Size = 8
    btnPicture(i).Height = 400
    btnPicture(i).Width = 735
Next
List1.Visible = False
List1.BackColor = Me.BackColor
'Frame3.Visible = Util.isPrincipal
opPromotion(0).value = True
opConduct(0).value = True
Call SetArrivalDateTimeProperties
Call SettxtDOBProperties
Call SettxtLeavingDateProperties
End Sub
Sub FillGrid()
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    Dim subQuery As String
    subQuery = " SELECT MAX(tid) FROM tblPerson Group By pid "
     query = "SELECT  tid, pid, firstName+' '+middlename+' '+lastName AS Name,whomtomeet, PermissionStatus,arrival FROM tblPerson WHERE personType = " & GM.visitor & "  AND PermissionStatus <> " & GM.StatusComplete & " AND tid IN (" + subQuery + ")  ORDER By tid DESC"
    If Util.isAdmin(site) Then
       query = "SELECT tid, pid, firstName+' '+isNull(middlename, '')+' '+isNull(lastName , '')AS Name, dept, dname, phone1 FROM tblPerson WHERE personType IN (" & GM.emp & ") AND tid IN (" + subQuery + ")  ORDER By tid DESC"
    End If
    If Util.isParty Then
       query = "SELECT tid, pid, firstName AS Name, mother, admissionNo,registrationNo  FROM tblPerson WHERE personType IN (" & GM.party & ") AND tid IN (" + subQuery + ")  ORDER By tid DESC"
    End If
    Dim cQuery  As String
    If Len(clas) > 0 Then
         cQuery = "AND dept ='" & clas & "' "
    Else
         cQuery = ""
    End If
    
    
    
    If Util.isPrincipal Then
       query = "SELECT  tid, pid, firstName+' '+isNull(middlename, '')+' '+isNull(lastName , '')AS Name, dept, company, phone1 FROM tblPerson WHERE personType IN (" & GM.student & ") AND tid IN (" + subQuery + ") " & cQuery & "  ORDER By firstname "
    End If
    
    
    'MsgBox query
    rs.Open query, site.conn
    
    
    
    
    Dim row As Integer
    row = 1
    Call setGridProperties
    If Not rs.EOF Then
         rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            Grid1.Rows = row + 1
            Grid1.row = row
            For i = 0 To 3
                Grid1.Col = i
                If rs.Fields(i + 1).Name = "PermissionStatus" Then
                    Grid1.Text = Util.GetStatus(rs.Fields(i + 1).value)
                Else
                    Grid1.Text = Util.CheckNull(rs.Fields(i + 1).value)
                End If
             Next
            Grid1.Col = 4
            Grid1.Text = rs.Fields("tid").value
            Grid1.Col = 5
            If Util.isParty Then
                Grid1.Text = Util.CheckNull(rs.Fields("registrationNo").value)
            Else
                'Grid1.Text = Format(rs.Fields("arrival").value, "dd-mmm-yy hh:mm ampm")
                 Grid1.Text = Util.CheckNull(rs.Fields("phone1").value)
            End If
            row = row + 1
            rs.MoveNext
        Wend
    End If
    Label2.Caption = "Total Records :  " & row - 1
    
    rs.Close
    
End Sub

Private Sub Grid1_Click()
    Call GetPersonByPID("", "-1", "")
    If Len(GetPid()) > 0 Then
        Me.prnPid = GetPid()
        Me.prnTid = GetTid()
        Me.prnfile = pfile
    End If
    If IsNumeric(txtString(19).Text) And (UCase(txtString(3).Text) = UCase("Pass Out") Or UCase(txtString(3).Text) = UCase("TC Given")) Then
        Me.btnPrintTC.Enabled = Util.checkPassOutClass(site, txtString(19).Text)
        If Util.checkTCGivenClass(site, txtString(19).Text) Then
            Me.btnPrintTC.Caption = "Re-Print &TC"
            Me.btnPrintTC.Enabled = True
        Else
            Me.btnPrintTC.Caption = "Print &TC"
        End If
    Else
        Me.btnPrintTC.Enabled = False
    End If
End Sub
Private Sub Grid1_KeyUp(KeyCode As Integer, Shift As Integer)
   Select Case KeyCode
        Case 116 'F5
            Me.txtString(3).SetFocus
        Case 117 'F6
            Me.txtString(23).SetFocus
        Case 13
            Call Grid1_Click
   End Select
End Sub

Private Sub List1_KeyUp(KeyCode As Integer, Shift As Integer)
    Select Case KeyCode
     Case 13
        Call HideList(focusIndex)
     End Select
End Sub
Private Sub List1_LostFocus()
    Call HideList(focusIndex)
End Sub
Private Sub Picture1_Click()
    Dim Y
    If Not Picture1.Picture = 0 Then
        Y = MsgBox("Do You Want to replace this picture ?", vbQuestion + vbYesNo)
        If Y = vbNo Then
            Exit Sub
         End If
    End If
    pictureFileName = Util.GetPictureFromFolder(site)
    Picture1.Picture = LoadPicture(pictureFileName)
    Call updateButtons
End Sub

Private Sub txtArrivalDate1_GotFocus(Index As Integer)
    Util.FOCUSME txtArrivalDate1(Index)
    Call MDIForm1.mdiHelp
End Sub
Private Sub txtArrivalDate1_LostFocus(Index As Integer)
    Util.LostFocus txtArrivalDate1(Index)
End Sub
Private Sub txtDOB_GotFocus(Index As Integer)
    Util.FOCUSME txtDOB(Index)
    Call MDIForm1.mdiHelp
End Sub
Private Sub txtDOB_LostFocus(Index As Integer)
    Call Util.LostFocus(txtDOB(Index))
End Sub
Private Sub txtLeavingDate_GotFocus(Index As Integer)
    Util.FOCUSME txtLeavingDate(Index)
    Call MDIForm1.mdiHelp
End Sub
Private Sub txtLeavingDate_LostFocus(Index As Integer)
    Util.LostFocus Me.txtLeavingDate(Index)
End Sub
Private Sub txtString_Change(Index As Integer)
For Index = 0 To 2
    If Len(txtString(Index).Text) = 1 Then
        txtString(Index).Text = Util.ChangeToTitle(txtString(Index).Text)
        txtString(Index).SelStart = 1
    End If
  Call updateButtons
Next
End Sub
Private Sub txtString_GotFocus(Index As Integer)
    Util.FOCUSME txtString(Index)
    Call MDIForm1.mdiHelp
End Sub
Private Sub FillTransport()

    
    Call Util.LovTransport(site, Me.cmboTransport)
    Me.cmboTransport.Text = "Self Transport"
    
    
    
End Sub


Private Sub txtString_KeyUp(Index As Integer, KeyCode As Integer, Shift As Integer)
Dim whichList As String
whichList = ""
If Util.isPrincipal Or GM.EnterBy = GM.adminUserID Then
    Select Case Index
        Case 3, 4, 6, 7, 8, 11, 12, 13, 14, 16, 24, 25, 26, 27, 28
            If KeyCode = vbKeyDown Then
                Call ShowList(Index)
            End If
    End Select
End If
If Util.isParty Then
    Select Case Index
        Case 8, 11, 12, 13, 14, 16, 22, 23
            If KeyCode = vbKeyDown Then
                Call ShowList(Index)
            End If
    End Select
End If


If Util.isPrincipal And KeyCode = 13 Then
        Call FindPerson(Index)
   End If


 End Sub

Sub ClearTxtString()
    For i = 0 To Me.txtString.count - 1
        txtString(i).FontSize = FntSize
        txtString(i).Text = ""
        txtString(i).BorderStyle = 1
        txtString(i).Height = GM.txtHeight
        txtString(i).BackColor = RGB(164, 209, 255)
        txtString(i).Appearance = vbFlat
     Next
    txtString(11).Width = txtString(0).Width / 2
    txtString(18).Width = 6375
    txtString(18).Height = txtString(0).Height * 1.5
    Me.txtString(19).BackColor = Me.BackColor
    Me.txtString(19).Enabled = False
    Me.txtString(19).Text = "New"
    Me.txtString(20).BackColor = Me.BackColor
    Me.txtString(20).Enabled = False
    Me.txtString(20).Text = "Visitor"
    If Util.isAdmin(site) Then
      Me.txtString(19).BackColor = RGB(164, 209, 255)
      Me.txtString(20).Text = "Employee"
      Me.txtString(5).Visible = False
      Me.txtString(6).Visible = False
      Me.txtString(12).Visible = False
      Me.Label1(14).Visible = False
    End If
    If Util.isPrincipal Then
      Me.txtString(19).BackColor = RGB(164, 209, 255)
      Me.txtString(20).Text = "Student"
      Me.txtString(5).Visible = False
      'Me.txtString(4).Visible = False
      'Me.txtString(6).Visible = False
      
      Call FillTransport
      
     End If

     If Util.isParty Then
      Me.txtString(19).BackColor = RGB(164, 209, 255)
      Me.txtString(20).Text = "Party"
      Me.Label1(0).Caption = "Account of"
      Me.Label1(26).Caption = "Opening Balance"
      Me.Label1(27).Caption = "Dr/Cr"
      Me.Label1(28).Caption = "Account Group"
      Me.txtString(23).Width = 4000
      Me.txtString(0).Width = 4000
      txtString(11).Width = txtString(0).Width / 5
      Me.txtString(1).Visible = False
      Me.txtString(2).Visible = False
      Me.txtString(9).Visible = False
      Me.txtString(12).Visible = False
      Me.txtString(13).Visible = False
      Me.Label1(1).Visible = False
      Me.Label1(2).Visible = False
      Me.Label1(3).Visible = False
      Me.Label1(10).Visible = False
      Me.Label1(14).Visible = False
      Me.Label1(15).Visible = False
      Me.Frame2.Visible = False
      
     End If
    If txtString(0).Visible Then
        txtString(0).SetFocus
    End If
   
   Me.Label1(25).Visible = Util.isPrincipal
   Me.Label1(26).Visible = Util.isPrincipal Or Util.isParty
   Me.Label1(27).Visible = Util.isPrincipal Or Util.isParty
   Me.Label1(28).Visible = Util.isPrincipal Or Util.isParty
   Me.Label1(29).Visible = Util.isPrincipal
   Me.txtString(21).Visible = Util.isPrincipal Or Util.isParty
   Me.txtString(22).Visible = Util.isPrincipal Or Util.isParty
   Me.txtString(23).Visible = Util.isPrincipal Or Util.isParty
   Me.txtString(24).Visible = Util.isPrincipal
  End Sub
Private Sub txtString_LostFocus(Index As Integer)
    Call Util.LostFocus(txtString(Index))
    If Index = 50 And Len(Me.txtString(5).Text) > 0 Then
      Set p = New Person
      p.pid = Me.txtString(5).Text
      Dim p2 As Person
      Set p2 = p.GetPerson(site, -1)
      Me.txtString(3).Text = p2.dept
      Me.txtString(4).Text = p2.dName
    End If
    Call updateButtons
End Sub
Sub updateButtons()
    btnGetPerson.Enabled = Len(txtString(15).Text) > 0 Or Len(txtString(0).Text) > 0 Or Len(txtString(23).Text) > 0
    Me.btnSave.Enabled = Len(txtString(0).Text) > 0
    Me.btnDelete.Enabled = Len(txtString(0).Text) > 0
    
    Me.btnPrintCC.Enabled = Len(txtString(0).Text) > 0
    Me.btnTC.Enabled = Len(txtString(0).Text) > 0 And txtString(3).Text = "Pass Out"
    
    'Me.btnPrintCC.Visible = False
    'Me.btnTC.Visible = False
   ' FrameTC.Visible = False
    
    
     Me.btnDoc.Enabled = IsNumeric(Me.txtString(19).Text)
    
    'Me.btnPerformance.Visible = Util.isPrincipal
    Me.btnPrintForm.Visible = Util.isPrincipal
    Me.btnPrintForm.Enabled = IsNumeric(txtString(19).Text)
    Me.btnDeleteClass.Visible = Util.isPrincipal And GM.isLedgerDelete
    Dim status As Integer
    status = GetStatus
End Sub

Sub ShowList(Index As Integer)
    focusIndex = Index
    List1.BackColor = RGB(164, 209, 255)
    List1.Visible = True
    List1.SetFocus
    List1.Clear
    List1.FontSize = FntSize
    List1.FontBold = True
    Select Case Index
       
       Case 3 ' "Dept"
            'Call Util.LoV(site, "Dept", List1)
            Call Util.LoVClass(site, "Dept", List1)
            If Not Util.isPrincipal Then
                Call Util.LoVDept(site, "dept", List1)
            End If
       Case 4 '"Designation"
            If Util.isPrincipal Then
                Call Util.LoVLastSchool(site, "Dname", List1)
            Else
                Call Util.LoVDname(site, "Dname", List1)
            End If
       Case 7 '"House"
            Call Util.LoV(site, "Pin", List1)
       Case 8 '"City"
            Call Util.LoV(site, "City", List1)
       Case 9 '"company"
        If Not Util.isPrincipal Then
            Call Util.LoV(site, "company", List1)
        End If
       Case 11 'prefix
            List1.AddItem "Mr"
            List1.AddItem "Mrs"
            List1.AddItem "Ms"
            List1.AddItem "Dr"
       Case 12 '"Religion"
            Call Util.LoV(site, "Religion", List1)
            
       Case 27 '"Caste"
            Call Util.LoV(site, "Caste", List1)
            
       Case 28 '"Category"
            Call Util.LoV(site, "Category", List1)
            
       
       
       Case 13 '"state"
            List1.AddItem "Male"
            List1.AddItem "Female"
        Case 20
            List1.AddItem "Employee"
            List1.AddItem "Student"
      Case 5 '"Empid"
        Call Util.LoVPerson(site, Me.txtString(3).Text, Me.txtString(4).Text, List1, True, "")
      Case 6 ' purpose
        Call Util.LoVClass(site, "Dept", List1)
      Case 16
        Call Util.LoVClass(site, "Dept", List1)
      Case 22 ' purpose
        List1.AddItem "Dr"
        List1.AddItem "Cr"
      Case 24 'Father Occupation
         Call Util.LoV(site, "BoardsRollNo", List1)
      
      Case 23 'account group
        If Util.isParty Then
            Call Util.LovGroup(site, List1)
        End If
        
        Case 25 'Transport route
            Call Util.LovTransport(site, List1)
        
        
        
    End Select
  End Sub
Sub HideList(Index As Integer)
     If Index > -1 Then
       If Index = 5 Then
        Dim length As Long
        If Len(List1.Text) > 0 Then
            length = Len(List1.Text) - InStr(List1.Text, "'")
            txtString(Index).Text = Left(Right(List1.Text, length), length - 1)
        End If
        txtString(Index).SetFocus
       Else
        txtString(Index).Text = List1.Text
        txtString(Index).SetFocus
       End If
       
    End If
    List1.Visible = False
    focusIndex = -1
    Call updateButtons
End Sub
Sub SetArrivalDateTimeProperties()
    For i = 0 To Me.txtArrivalDate1.count - 1
        txtArrivalDate1(i).Text = ""
        txtArrivalDate1(i).BorderStyle = 1
        txtArrivalDate1(i).Appearance = vbFlat
        txtArrivalDate1(i).MaxLength = 2
        txtArrivalDate1(i).BackColor = RGB(164, 209, 255)
        txtArrivalDate1(i).Height = txtString(0).Height
        txtArrivalDate1(i).Width = txtString(0).Width / 5
    Next
    txtArrivalDate1(1).Left = txtArrivalDate1(0).Left + txtArrivalDate1(0).Width + 50
    txtArrivalDate1(2).Left = txtArrivalDate1(1).Left + txtArrivalDate1(1).Width + 50
    txtArrivalDate1(3).Left = txtArrivalDate1(2).Left + txtArrivalDate1(2).Width + 500
    txtArrivalDate1(4).Left = txtArrivalDate1(3).Left + txtArrivalDate1(3).Width + 50
    txtArrivalDate1(5).Left = txtArrivalDate1(4).Left + txtArrivalDate1(4).Width + 50
    txtArrivalDate1(2).Width = txtArrivalDate1(0).Width * 2
    txtArrivalDate1(2).MaxLength = 4
    txtArrivalDate1(3).Text = Util.GetHour(Now)
    txtArrivalDate1(4).Text = Util.GetMins(Now)
    txtArrivalDate1(5).Text = Util.GetAMPM(Now)
            
 End Sub
Sub setGridProperties()
    Grid1.Refresh
    Grid1.Clear
    Grid1.SelectionMode = flexSelectionByRow
    Grid1.Width = 7800
    Grid1.Left = txtString(0).Left
    Grid1.FixedRows = 1
    Grid1.FixedCols = 0
    Grid1.Cols = 6
    Grid1.ColWidth(0) = 700
    Grid1.ColWidth(1) = 700 * 3
    Grid1.ColWidth(2) = 700 * 2
    Grid1.ColWidth(3) = 700 * 3
    Grid1.ColWidth(4) = 0
    Grid1.ColWidth(5) = 1400
    'Grid1.Width = Grid1.ColWidth(0) + Grid1.ColWidth(1) + Grid1.ColWidth(2) + Grid1.ColWidth(3) + 300 + 1400 + 700
    Grid1.Width = Util.gridWidth(Grid1) - 200
    Grid1.Height = 1700
    Grid1.row = 0
    Grid1.Col = 0
    Grid1.Text = "PID"
    Grid1.Col = 1
    Grid1.Text = "Name"
    Grid1.Col = 2
    Grid1.Text = "WhomToMeet"
    If Util.isAdmin(site) Then
       Grid1.Text = "Department"
    ElseIf Util.isPrincipal Then
       Grid1.Text = "Class"
    ElseIf Util.isParty Then
       Grid1.Text = "Opening Balance"
    End If
    Grid1.Col = 3
    Grid1.Text = "Status"
    If Util.isAdmin(site) Then
       Grid1.Text = "Designation"
    ElseIf Util.isPrincipal Then
        Grid1.Text = "Father's Name"
    ElseIf Util.isParty Then
       Grid1.Text = "Dr/Cr"
    End If
    Grid1.Col = 4
    Grid1.Text = "TID"
    Grid1.Col = 5
    Grid1.Text = "Phone No"
    If Util.isParty Then
       Grid1.Text = "Group"
    End If
End Sub
Sub ClearForm()
    Picture1.Picture = LoadPicture()
    clas = Me.txtString(3).Text
    Call ClearTxtString
    Call SetArrivalDateTimeProperties
    Call SettxtDOBProperties
    Call SettxtLeavingDateProperties
    Call FillGrid
    Me.txtString(3).Text = clas
End Sub
Function GetTid() As Long
    Grid1.Col = 4
    GetTid = CLng(Grid1.Text)
End Function
Function GetPid() As String
    Grid1.Col = 0
    GetPid = Grid1.Text
End Function
Function GetName() As String
    Grid1.Col = 1
    GetName = Grid1.Text
End Function
Function getClass() As String
    Grid1.Col = 2
    getClass = Grid1.Text
End Function
Function GetSection() As String
    Grid1.Col = 3
    GetSection = Grid1.Text
End Function
Sub SettxtLeavingDateProperties()
    For i = 0 To Me.txtLeavingDate.count - 1
        txtLeavingDate(i).Text = ""
        txtLeavingDate(i).BorderStyle = 1
        txtLeavingDate(i).Appearance = vbFlat
        txtLeavingDate(i).MaxLength = 2
        txtLeavingDate(i).BackColor = RGB(164, 209, 255)
        txtLeavingDate(i).Height = txtString(0).Height
        txtLeavingDate(i).Width = txtString(0).Width / 5
        txtLeavingDate(i).Visible = Util.isPrincipal
    Next
    txtLeavingDate(2).MaxLength = 4
    txtLeavingDate(2).Width = txtLeavingDate(0).Width * 2
    txtLeavingDate(1).Left = txtLeavingDate(0).Left + txtLeavingDate(0).Width + 50
    txtLeavingDate(2).Left = txtLeavingDate(1).Left + txtLeavingDate(1).Width + 50
End Sub
Sub SettxtDOBProperties()
    For i = 0 To Me.txtDOB.count - 1
        txtDOB(i).Text = ""
        txtDOB(i).BorderStyle = 1
        txtDOB(i).Appearance = vbFlat
        txtDOB(i).MaxLength = 2
        txtDOB(i).BackColor = RGB(164, 209, 255)
        txtDOB(i).Height = txtString(0).Height
        txtDOB(i).Visible = (Util.isPrincipal And i < 3)
    Next
    txtDOB(2).MaxLength = 4
End Sub
Function checkTCData(p As Person) As Boolean
     checkTCData = True
    ' dob
     If p.dob < #1/1/1920# Then
        MsgBox "Pls. enter Date of Birth.."
        Set tcControl = txtDOB(0)
        checkTCData = False
        Exit Function
     End If
     'admission no
     If Len(p.AdmissionNo) < 1 Then
        MsgBox "Pls. enter Admission No.."
        Set tcControl = txtString(22)
        checkTCData = False
        Exit Function
     End If
     ' last school
     If Len(p.dName) < 1 Then
        MsgBox "Pls. enter Last School"
        Set tcControl = txtString(4)
        checkTCData = False
        Exit Function
     End If
     ' admission class
     If Len(p.purpose) < 1 Then
        MsgBox "Pls. enter class of admission.."
        Set tcControl = txtString(6)
        checkTCData = False
        Exit Function
     End If
     ' leaving date
     If Len(p.code1) < 1 Then
        MsgBox "Pls. enter leaving date.."
        Set tcControl = txtLeavingDate(0)
        checkTCData = False
        Exit Function
     End If
     ' leaving class
     If Len(p.code2) < 1 Then
        MsgBox "Pls. enter leaving class.."
        Set tcControl = txtString(16)
        checkTCData = False
        Exit Function
     End If
     ' father's Name
     If Len(p.company) < 1 Then
        MsgBox "Pls. enter father's name.."
        Set tcControl = txtString(9)
        checkTCData = False
        Exit Function
     End If
     ' gender
     If Len(p.state) < 1 Then
        MsgBox "Pls. enter gender Male or Female.."
        Set tcControl = txtString(13)
        checkTCData = False
        Exit Function
     End If
      ' admission Date
     If p.arivalDate < #1/1/1920# Then
        MsgBox "Pls. enter date of admission.."
        Set tcControl = txtArrivalDate1(0)
        checkTCData = False
        Exit Function
     End If
     ' admission date cannot be less than dob
     If p.arivalDate < p.dob Then
        MsgBox "Date of admission can not be smaller than date of birth"
        Set tcControl = txtArrivalDate1(0)
        checkTCData = False
        Exit Function
     End If
     ' leaving date cannot be less than admission date
     If IsDate(p.code1) And (CDate(p.code1) < p.arivalDate) Then
           MsgBox "leaving date can not be smaller than admission date"
           Set tcControl = txtLeavingDate(0)
           checkTCData = False
           Exit Function
     End If
     'admission class can not be pass out,TC Given
     'leaving class can not be pass out,TC Given
     
End Function
Private Sub btnPrintTC_Click()
        Dim pid As String
        pid = txtString(19).Text
        Dim tcNo As Long
        If Me.btnPrintTC.Caption = "Re-Print &TC" Then
            tcNo = txtString(7).Text
        Else
            Set p = New Person
            tcNo = p.getID(site.conn, "tcid")
        End If
        Dim rs As Recordset
        Set rs = New Recordset
        Dim subQuery, colStr   As String
        subQuery = "SELECT MAX(tid) FROM tblPerson  WHERE pid= '" & pid & "' GROUP BY pid"
        colStr = " tid, pid, firstName+' '+middlename+' '+lastName AS Name, dob, RegistrationNo, company, state, arrival, dname, code1, code2"
        SearchQuery = "SELECT " & colStr & " FROM tblPerson WHERE tid IN (" & subQuery & ")"
        rs.Open SearchQuery, site.conn
        If Not rs.EOF Then
           rs.MoveFirst
           Dim XX, YY, spaceX, spaceY, xxx, paragraphX, paragraphY, para1, para2, dotY As Long
           XX = 700
           YY = 500
           spaceX = 900
           spaceY = 500
           xxx = 1500
           'paragraphX = 1000
           paragraphX = 1500
           paragraphY = 700
           para1 = 300
           para2 = 700
           dotY = 75
           Printer.CurrentX = XX + 9000
           Printer.CurrentY = YY - 150
           Printer.FontSize = 9
           'Printer.Print "Phone: 2680881"
           'Printer.PaintPicture Picture2.Picture, XX, YY, 1500, 1500
            Dim startY
            startY = 300
            Printer.FontSize = 18
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationName) / 2)
            Printer.CurrentY = startY
           ' Printer.Print GM.registrationName
            Printer.FontSize = 10
            startY = startY + 500
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAddress) / 2)
            Printer.CurrentY = startY
            'Printer.Print GM.registrationAddress
            startY = startY + 300
            Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAffiliation) / 2)
            Printer.CurrentY = startY
            'Printer.Print GM.registrationAffiliation
            
           
           
           Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth("TRANSFER CERTIFICATE") / 2)
           YY = YY + 2000
           Printer.CurrentY = YY + spaceY
           Printer.FontSize = 10
           Printer.FontUnderline = True
           Printer.FontBold = True
           Printer.Print "TRANSFER CERTIFICATE"
           Printer.FontUnderline = False
           Printer.FontBold = False
           Printer.CurrentX = XX
           Printer.CurrentY = YY + spaceY + spaceY + spaceY + 500
           Printer.FontSize = 9
           Printer.Print "TC Serial No.- "
           Printer.CurrentX = XX + 1200
           Printer.CurrentY = YY + spaceY + spaceY + spaceY + 500
           Printer.FontSize = 9
           Printer.FontBold = True
           Printer.Print tcNo
           Printer.FontBold = False
           Printer.CurrentX = XX + Len("TC Serial No.- ") * 80
           Printer.CurrentY = YY + spaceY + spaceY + spaceY + 500 + dotY
           Printer.Print "..................."
           Dim slno As Long
           slno = 0
           While rs.AbsolutePosition <> adPosEOF
                Dim tid As String
                Dim pName As String
                Dim dob As String
                Dim sex As String
                Dim fatherName As String
                Dim registrationNo As String
                Dim admissionDate As String
                Dim admissionClass As String
                Dim lastSchool As String
                Dim leavingDate As String
                Dim leavingClass As String
                tid = Util.CheckNull(rs.Fields("tid").value)
                pName = Util.CheckNull(rs.Fields("Name").value)
                dob = Format(Util.CheckNull(rs.Fields("dob").value), "dd-mmm-yyyy")
                sex = Util.CheckNull(rs.Fields("state").value)
                fatherName = Util.CheckNull(rs.Fields("company").value)
                registrationNo = Util.CheckNull(rs.Fields("RegistrationNo").value)
                admissionDate = Format(Util.CheckNull(rs.Fields("arrival").value), "dd-mmm-yyyy")
                lastSchool = Util.CheckNull(rs.Fields("dname").value)
                leavingDate = Format(Util.CheckNull(rs.Fields("code1").value), "dd-mmm-yyyy")
                leavingClass = Util.CheckNull(rs.Fields("code2").value)
                slno = slno + 1
                Printer.CurrentX = XX + 7700
                Printer.CurrentY = YY + spaceY + spaceY + spaceY + 500
                Printer.FontSize = 9
                Printer.Print "Registration No. - "
                Printer.CurrentX = XX + 9300
                Printer.CurrentY = YY + spaceY + spaceY + spaceY + 500
                Printer.FontSize = 9
                Printer.FontBold = True
                Printer.Print registrationNo
                Printer.FontBold = False
                
                Printer.CurrentX = XX + 9300
                Printer.CurrentY = YY + spaceY + spaceY + spaceY + 500 + dotY
                Printer.Print "................"
                
                Printer.CurrentX = paragraphX
                YY = YY + 2800
                Printer.CurrentY = YY
                Printer.FontSize = 10
                Printer.Print " This is to certify that "
                Printer.CurrentX = XX + 100 + 3000
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print UCase(pName)
                Printer.FontBold = False
                Printer.CurrentX = XX + 100 + 3000
                Printer.CurrentY = YY + dotY
                Printer.Print "...................................................................................................................."
                
                Dim son, he, his As String
                son = " son "
                he = " He "
                his = " His "
                If Trim(sex) = "Female" Then
                   son = " daughter "
                   he = " She "
                   his = " Her "
                End If
                Printer.CurrentX = XX
                YY = YY + para1
                Printer.CurrentY = YY
                Printer.Print son & " of "
                Printer.CurrentX = XX + 100 + 900
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print fatherName
                Printer.FontBold = False
                Printer.CurrentX = XX + 100 + 900
                Printer.CurrentY = YY + dotY
                Printer.Print "........................................................................................................................................................"
                
                Printer.CurrentX = XX
                YY = YY + para1
                Printer.CurrentY = YY
                Printer.Print " was admitted into this school on the "
                Printer.CurrentX = XX + 3500
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print admissionDate
                Printer.FontBold = False
                Printer.CurrentX = XX + 3500
                Printer.CurrentY = YY + dotY
                Printer.Print ".............................................................................."
                Printer.CurrentX = XX + 8000
                Printer.CurrentY = YY
                Printer.Print " on a transfer from "
                Printer.CurrentX = XX
                YY = YY + para1
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print " " & lastSchool
                Printer.FontBold = False
                Printer.CurrentX = XX
                Printer.CurrentY = YY + dotY
                Printer.Print "................................................................................................................"
                Printer.CurrentX = XX + 7000
                Printer.CurrentY = YY
                Printer.Print " and left on "
                Printer.CurrentX = XX + 8200
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print leavingDate
                Printer.FontBold = False
                Printer.CurrentX = XX + 8200
                Printer.CurrentY = YY + dotY
                Printer.Print "..........................."
                
                Printer.CurrentX = XX
                YY = YY + para1
                Printer.CurrentY = YY
                Printer.Print " with a "
                Printer.CurrentX = XX + 800
                Printer.CurrentY = YY
                Printer.FontBold = True
                Dim j As Integer
                For j = 0 To 3
                    If opConduct(j).value = True Then
                        Exit For
                    End If
                Next
                Printer.FontBold = True
                Printer.Print opConduct(j).Caption
                'Printer.Print "Good"
                Printer.CurrentX = XX + 800
                Printer.CurrentY = YY + dotY
                Printer.Print "..........................."
                Printer.FontBold = False
                Printer.CurrentX = XX + 1500 + 1000
                Printer.CurrentY = YY
                Printer.Print " character. "
                Printer.CurrentX = paragraphX
                YY = YY + paragraphY
                Printer.CurrentY = YY
                Printer.Print he & " was then studing in the "
                Printer.CurrentX = XX + 3500
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print leavingClass
                Printer.CurrentX = XX + 3500
                Printer.CurrentY = YY + dotY
                Printer.Print "............................................................................................."
                Printer.FontBold = False
                Printer.CurrentX = XX + 9000
                Printer.CurrentY = YY
                Printer.Print " class of "
                Printer.CurrentX = XX
                YY = YY + para1
                Printer.CurrentY = YY
                Printer.Print " the school year being from "
                
                Dim startYear As String
                Dim endYear As String
                If CInt(Format(leavingDate, "mm")) < 5 Then
                    startYear = Util.GetYear(CDate(leavingDate)) - 1
                Else
                    startYear = Util.GetYear(CDate(leavingDate))
                End If
                endYear = Format("01-01-" + CStr(CInt(startYear) + 1), "yyyy")
                startYear = Format("01-01-" + startYear, "yyyy")
                Printer.CurrentX = XX + 3000
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print " April " + startYear
                Printer.CurrentX = XX + 3000
                Printer.CurrentY = YY + dotY
                Printer.Print ".........................."
                Printer.CurrentX = XX + 4500
                Printer.CurrentY = YY
                Printer.FontBold = False
                Printer.Print " to "
                Printer.CurrentX = XX + 5000
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print " March " + endYear
                Printer.CurrentX = XX + 5000
                Printer.CurrentY = YY + dotY
                Printer.Print ".........................."
                
                Printer.FontUnderline = False
                Printer.FontBold = False
                Printer.CurrentX = paragraphX
                YY = YY + para2
                Printer.CurrentY = YY
                Printer.Print " All sums due to this school on" & his & "account have been remitted or satisfactorily arranged for."
                Printer.CurrentX = paragraphX
                YY = YY + para2
                Printer.CurrentY = YY
                Printer.Print his & " date of birth, according to the Admission Register is (In figures) "
                Printer.CurrentX = XX + 7300
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print Format(dob, "dd-mmm-yyyy")
                Printer.FontBold = False
                Printer.CurrentX = XX + 7300
                Printer.CurrentY = YY + dotY
                Printer.Print "............................................"
                
                Printer.FontBold = False
                Printer.CurrentX = XX
                YY = YY + para1
                Printer.CurrentY = YY
                Printer.Print " (In words) "
                Printer.CurrentX = XX + 1000
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print Util.getDateInWords(Format(dob, "dd-mmm-yyyy"))
                Printer.FontBold = False
                Printer.CurrentX = XX + 1000
                Printer.CurrentY = YY + dotY
                Printer.Print "........................................................................................................................................................."
                
                Printer.FontBold = False
                Printer.CurrentX = paragraphX
                YY = YY + para2
                Printer.CurrentY = YY
                Printer.Print " Promotion has been (**)"
                Dim i As Integer
                For i = 0 To 2
                    If opPromotion(i).value = True Then
                        Exit For
                    End If
                Next
                Printer.CurrentX = paragraphX + 2500
                Printer.CurrentY = YY
                Printer.FontBold = True
                Printer.Print opPromotion(i).Caption + ". "
                Printer.FontBold = False
                Printer.CurrentX = paragraphX + 2500
                Printer.CurrentY = YY + dotY
                Printer.Print ".................................................................................................................."
                Printer.CurrentX = XX
                YY = YY + paragraphY
                Printer.CurrentY = YY
                Printer.Print "Date: " & Format(Now, "dd-mmm-yyyy")
                Printer.CurrentX = XX + 100 + 5000 + 3000
                YY = YY + paragraphY
                Printer.CurrentY = YY
                Printer.FontItalic = True
                Printer.Print "Principal"
                Printer.FontItalic = False
                Printer.CurrentX = paragraphX
                YY = YY + paragraphY + 500
                Printer.CurrentY = YY
                Printer.Print "COUNTER SIGNED"
                Printer.DrawWidth = 5
                Printer.Line (XX, YY + 500)-(XX + 10500, YY + 500), , BF
                Printer.CurrentX = XX + 100 + 5000 + 2000
                YY = YY + paragraphY + 200
                Printer.CurrentY = YY
                Printer.FontSize = 6
                Printer.Print "TC generated by SchoolManger software Mob. 94111 49673"
                rs.MoveNext
                site.conn.Execute "UPDATE tblPerson SET dept= 'TC Given', pin='" & tcNo & "' , remarks=remarks+' TC Given on '& '" & Format(Now, "dd-mmm-yyyy") & "' WHERE  tid = (" & tid & ")"
           Wend
           Printer.EndDoc
        End If
End Sub

Private Function FindPerson2() As String
    
        Dim qry As String
        Dim cnt As Integer
        Dim rs As Recordset
        Set rs = New Recordset
        qry = " SELECT tid, pid, FirstName, LastName "
        qry = qry & " , dept Class, company FatherName, phone1, address, city "
        
        qry = qry & " , (case when dob < '1902-01-01 10:10:00.000' THEN '' "
        qry = qry & "  ELSE CONVERT(VARCHAR(11), dob, 106) END)DOB "

        
        qry = qry & " , state Gender, AdmissionNo, RegistrationNo "
        qry = qry & " , BoardsrollNo FatherOccupation, Mother MotherName, phone2, pin House "
        qry = qry & " , caste, Religion, Category, Income, AdharNo "
        
        qry = qry & " , (SELECT RouteName from tblRoute where routeID = tblPerson.routeID) Transport "
        qry = qry & " , dName LastSchool, purpose AdmissionClass"
        
        qry = qry & "  FROM tblPerson"
        qry = qry & "  WHERE 1=1 "
                
        ' firstname
        If Len(txtString(0)) > 0 Then
            qry = qry & " AND FirstName like '" & txtString(0).Text & "%'"
        End If
        
        ' lastname
        If Len(txtString(2)) > 0 Then
            qry = qry & " AND  LastName like '" & txtString(2).Text & "%'"
        End If
        
        ' class
        If Len(txtString(3)) > 0 Then
            qry = qry & " AND  dept = '" & txtString(3).Text & "'"
        End If
        
        ' 222 last school
        
        If Len(txtString(4)) > 0 Then
            qry = qry & " AND  dName like '" & txtString(4).Text & "%'"
        End If
        
        ' admisssion class
        
        If Len(txtString(6)) > 0 Then
            qry = qry & " AND  purpose like '" & txtString(6).Text & "%'"
        End If
        
        
        ' city
        If Len(txtString(8)) > 0 Then
            qry = qry & " AND  city like '" & txtString(8).Text & "%'"
        End If
        
        ' House
        If Len(txtString(7)) > 0 Then
            qry = qry & " AND  pin like '" & txtString(7).Text & "%'"
        End If
        
        
         ' Income
        If Len(txtString(25)) > 0 Then
            qry = qry & " AND  Income like '" & txtString(25).Text & "%'"
        End If
        
        
        ' fathers name
        If Len(txtString(9)) > 0 Then
            qry = qry & " AND  company like '" & txtString(9).Text & "%'"
        End If
        
        
        ' AdharNo
        If Len(txtString(26)) > 0 Then
            qry = qry & " AND  AdharNo like '" & txtString(26).Text & "%'"
        End If
        
        
        ' Caste
        If Len(txtString(27)) > 0 Then
            qry = qry & " AND  Caste like '" & txtString(27).Text & "%'"
        End If
        
        
        
        ' Religion
        If Len(txtString(12)) > 0 Then
            qry = qry & " AND  Country like '" & txtString(12).Text & "%'"
        End If
        
        ' Category
        If Len(txtString(28)) > 0 Then
            qry = qry & " AND  Category like '" & txtString(28).Text & "%'"
        End If
        
        
        
        
        ' gender
        If Len(txtString(13)) > 0 Then
            qry = qry & " AND  state like '" & txtString(13).Text & "%'"
        End If
        
        
        
        ' mother
        If Len(txtString(21)) > 0 Then
            qry = qry & " AND  mother like '" & txtString(21).Text & "%'"
        End If
        
        ' adm no
        If Len(txtString(22)) > 0 Then
            qry = qry & " AND  admissionNo like '" & txtString(22).Text & "%'"
        End If
        
        ' Rgn no
        If Len(txtString(23)) > 0 Then
            qry = qry & " AND  RegistrationNo like '" & txtString(22).Text & "%'"
        End If
        
        ' Father occupation
        If Len(txtString(24)) > 0 Then
            qry = qry & " AND  BoardsRollNo like '" & txtString(24).Text & "%'"
        End If
        
        
        
        qry = qry & " AND tid IN (SELECT MAX(tid) FROM tblPerson Group BY PID)"
        qry = qry & " AND persontype = " & GM.student
        qry = qry & " ORDER BY firstname, dept"
        rs.Open qry, site.conn
        cnt = 0
        Dim row As Integer
        row = 1
         Call setGridProperties
        If Not rs.EOF Then
           rs.MoveFirst
           While rs.AbsolutePosition <> adPosEOF
                Grid1.Rows = row + 1
                Grid1.row = row
        
                Grid1.Col = 0
                Grid1.Text = Util.CheckNull(rs.Fields("pid").value)
                
                Grid1.Col = 1
                Grid1.Text = Util.CheckNull(rs.Fields("firstName").value) & " " & Util.CheckNull(rs.Fields("lastName").value)
                
                Grid1.Col = 2
                Grid1.Text = Util.CheckNull(rs.Fields("class").value)
                
                Grid1.Col = 3
                Grid1.Text = Util.CheckNull(rs.Fields("fatherName").value)
                
                Grid1.Col = 4
                Grid1.Text = Util.CheckNull(rs.Fields("tid").value)
                
                
                Grid1.Col = 5
                Grid1.Text = Util.CheckNull(rs.Fields("phone1").value)
                
                
                
                row = row + 1
                cnt = cnt + 1
                rs.MoveNext
           Wend
        End If
        rs.Close
        Me.Label2.Caption = "Records:" & cnt
               
         
        FindPerson2 = qry
    
End Function



Private Sub FindPerson(Index As Integer)
               
        Dim txtValue As String
        txtValue = txtString(Index).Text
        Dim colName As String
        
        colName = "FirstName"
        
        Select Case Index
            Case 0
                colName = "FirstName"
            Case 2
                colName = "lastName"
            Case 3
                colName = "dept"
             Case 9
                colName = "company"
              Case 12
                colName = "Country"
              Case 13
                colName = "State"
              Case 21
                colName = "mother"
              Case 22
                colName = "AdmissionNo"
             Case 25   ' RollNo3
                colName = "RollNo1"
             'Case 34 ' RollNo2
              '  colName = "RollNo2"
              'Case 47 ' RollNo3
               ' colName = "RollNo2"
        End Select
                
        If Len(txtValue) < 1 Then
            MsgBox "No values to find are given..."
            Exit Sub
        End If
                
        
        Dim qry As String
        Dim cnt As Integer
        Dim rs As Recordset
        Set rs = New Recordset
        qry = " SELECT tid, pid, firstname, lastName, dept, company, phone1, address, city FROM tblPerson"
        If Index = 25 Then ' for RollNos get only on row
            qry = qry & " WHERE (RollNo1 IN (" & txtValue & ") "
            qry = qry & " OR RollNo2 IN (" & txtValue & ") "
            qry = qry & " OR RollNo3 IN (" & txtValue & ") )"
        Else
            qry = qry & " WHERE " & colName & " like '" & txtValue & "%'"
        End If
        
        qry = qry & " AND tid IN (SELECT MAX(tid) FROM tblPerson Group BY PID)"
        qry = qry & " AND persontype = " & GM.student
        qry = qry & " ORDER BY firstname, dept"
        rs.Open qry, site.conn
        cnt = 0
        Dim row As Integer
        row = 1
         Call setGridProperties
        If Not rs.EOF Then
           rs.MoveFirst
           While rs.AbsolutePosition <> adPosEOF
                Grid1.Rows = row + 1
                Grid1.row = row
        
                Grid1.Col = 0
                Grid1.Text = Util.CheckNull(rs.Fields("pid").value)
                
                Grid1.Col = 1
                Grid1.Text = Util.CheckNull(rs.Fields("firstName").value) & " " & Util.CheckNull(rs.Fields("lastName").value)
                
                Grid1.Col = 2
                Grid1.Text = Util.CheckNull(rs.Fields("dept").value)
                
                Grid1.Col = 3
                Grid1.Text = Util.CheckNull(rs.Fields("company").value)
                
                Grid1.Col = 4
                Grid1.Text = Util.CheckNull(rs.Fields("tid").value)
                
                
                Grid1.Col = 5
                Grid1.Text = Util.CheckNull(rs.Fields("phone1").value)
                
                
                
                row = row + 1
                cnt = cnt + 1
                rs.MoveNext
           Wend
        End If
        rs.Close
        Me.Label2.Caption = "Records:" & cnt

End Sub

