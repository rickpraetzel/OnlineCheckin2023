#tag WebContainerControl
Begin WebContainer CCInfoControl
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   238
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   ScrollDirection =   0
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   304
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebLabel Label1
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   30
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   7
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   0
      Text            =   "Name on Card:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   0
      Underline       =   False
      Visible         =   True
      Width           =   257
      _mPanelIndex    =   -1
   End
   Begin WebTextField NameOnCardField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   0
      Height          =   30
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   7
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   1
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   35
      Visible         =   True
      Width           =   292
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label2
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   30
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   126
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   2
      Text            =   "Expiration:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   170
      Underline       =   False
      Visible         =   True
      Width           =   160
      _mPanelIndex    =   -1
   End
   Begin WebPopupMenu ExpirationMonthPopup
      ControlID       =   ""
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   126
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      RowCount        =   0
      Scope           =   2
      SelectedRowIndex=   0
      SelectedRowValue=   ""
      TabIndex        =   3
      Tooltip         =   ""
      Top             =   205
      Visible         =   True
      Width           =   75
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label3
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   30
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   201
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   4
      Text            =   "/"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   207
      Underline       =   False
      Visible         =   True
      Width           =   21
      _mPanelIndex    =   -1
   End
   Begin WebPopupMenu ExpirationYearPopup
      ControlID       =   ""
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   221
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      RowCount        =   0
      Scope           =   2
      SelectedRowIndex=   0
      SelectedRowValue=   ""
      TabIndex        =   5
      Tooltip         =   ""
      Top             =   205
      Visible         =   True
      Width           =   80
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label4
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   30
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   7
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   6
      Text            =   "Card Number:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   85
      Underline       =   False
      Visible         =   True
      Width           =   257
      _mPanelIndex    =   -1
   End
   Begin WebTextField CreditCardNumberField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   0
      Height          =   30
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   7
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   7
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   120
      Visible         =   True
      Width           =   293
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label5
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   30
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   7
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   8
      Text            =   "CVV:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   170
      Underline       =   False
      Visible         =   True
      Width           =   70
      _mPanelIndex    =   -1
   End
   Begin WebTextField CVVField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   0
      Height          =   30
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   7
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   9
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   205
      Visible         =   True
      Width           =   81
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub clear()
		  CreditCardNumberField.Text = ""
		  ExpirationMonthPopup.selectedrowindex = -1
		  ExpirationYearPopup.selectedrowindex = -1
		  NameOnCardField.Text = ""
		  CVVField.Text = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub clearHighlights()
		  'CreditCardNumberField.Style = FieldStyle_Body
		  'ExpirationMonthPopup.Style = FieldStyle_Body
		  'ExpirationYearPopup.Style = FieldStyle_Body
		  'NameOnCardField.Style = FieldStyle_Body
		  'CVVField.Style = FieldStyle_Body
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getCCNumber() As string
		  dim ccString as string
		  dim ccArray() as string = CreditCardNumberField.Text.Split("")
		  
		  for ii as integer = 0 to UBound(ccArray)
		    if IsNumeric(ccArray(ii)) then
		      ccString = ccString + ccArray(ii)
		      
		    end if
		    
		  next
		  
		  return ccString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getCreditCard() As CreditCard
		  dim bb as new CreditCardBuilder()
		  dim expiration as string = ExpirationMonthPopup.RowValueAt(ExpirationMonthPopup.SelectedRowIndex) + right(ExpirationYearPopup.RowValueAt(ExpirationYearPopup.SelectedRowIndex), 2)
		  dim ccNumber as string = getCCNumber()
		  
		  return bb._
		  setCVVCode(CVVField.Text)._
		  setCCNumber(ccNumber)._
		  setExpirationDate(expiration)._
		  build()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isValidData() As Boolean
		  if Len(NameOnCardField.Text) = 0 then
		    return false
		    
		  end if
		  
		  if ExpirationMonthPopup.selectedrowindex = -1 then
		    return false
		    
		  end if
		  
		  if ExpirationYearPopup.selectedrowindex = -1 then
		    return false
		    
		  end if
		  
		  if len(CreditCardNumberField.Text) = 0 then
		    return false
		    
		  end if
		  
		  if len(CVVField.Text) = 0 then
		    return false
		    
		  end if
		  
		  if not IsNumeric(CVVField.Text) then
		    return false
		    
		  end if
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setHighlights()
		  clearHighlights()
		  if Len(NameOnCardField.Text) = 0 then
		    'NameOnCardField.Style = FieldStyle_Alert
		    
		  end if
		  
		  if ExpirationMonthPopup.selectedrowindex = -1 then
		    'ExpirationMonthPopup.Style = FieldStyle_Alert
		    
		  end if
		  
		  if ExpirationYearPopup.selectedrowindex = -1 then
		    'ExpirationYearPopup.Style = FieldStyle_Alert
		    
		  end if
		  
		  if len(CreditCardNumberField.Text) = 0 then
		    'CreditCardNumberField.Style = FieldStyle_Alert
		    
		  end if
		  
		  if len(CVVField.Text) = 0 then
		    'CVVField.Style = FieldStyle_Alert
		    
		  end if
		  
		  if not IsNumeric(CVVField.Text) then
		    'CVVField.Style = FieldStyle_Alert
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setHighlights(resp as ProfileResponse)
		  clearHighlights()
		  select case resp.lastErrorCode
		  case app.kLengthError
		    'CreditCardNumberField.Style = FieldStyle_Alert
		    
		  case app.kExpiredError
		    'ExpirationMonthPopup.Style = FieldStyle_Alert
		    'ExpirationYearPopup.Style = FieldStyle_Alert
		    
		  case app.kDataError
		    if InStr(resp.errorMessage, "xsd:cardNumber") > 0 then
		      'CreditCardNumberField.Style = FieldStyle_Alert
		      
		    end if
		    
		    if instr(resp.errorMessage, "xsd:cardCode") > 0 then
		      'CVVField.Style = FieldStyle_Alert
		      
		    end if
		    
		  else
		    'CreditCardNumberField.Style = FieldStyle_Alert
		    'ExpirationMonthPopup.Style = FieldStyle_Alert
		    'ExpirationYearPopup.Style = FieldStyle_Alert
		    'NameOnCardField.Style = FieldStyle_Alert
		    'CVVField.Style = FieldStyle_Alert
		    
		  end select
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events ExpirationYearPopup
	#tag Event
		Sub Opening()
		  const kMaxYearsFromNow = 6
		  dim today as xojo.core.date = xojo.core.Date.Now()
		  
		  for ii as integer = today.Year to today.Year + kMaxYearsFromNow
		    me.AddRow(str(ii))
		    
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignWidth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScrollDirection"
		Visible=true
		Group="Behavior"
		InitialValue="ScrollDirections.None"
		Type="WebContainer.ScrollDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - None"
			"1 - Horizontal"
			"2 - Vertical"
			"3 - Both"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Visual Controls"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Indicator"
		Visible=false
		Group="Visual Controls"
		InitialValue=""
		Type="WebUIControl.Indicators"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Primary"
			"2 - Secondary"
			"3 - Success"
			"4 - Danger"
			"5 - Warning"
			"6 - Info"
			"7 - Light"
			"8 - Dark"
			"9 - Link"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="View"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="View"
		InitialValue="LayoutDirections.LeftToRight"
		Type="LayoutDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - LeftToRight"
			"1 - RightToLeft"
			"2 - TopToBottom"
			"3 - BottomToTop"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
