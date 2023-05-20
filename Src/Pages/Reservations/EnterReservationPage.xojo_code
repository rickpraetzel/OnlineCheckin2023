#tag WebPage
Begin mPage EnterReservationPage
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   429
   ImplicitInstance=   True
   Index           =   -2147483648
   Indicator       =   0
   IsImplicitInstance=   False
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   LockVertical    =   False
   MinimumHeight   =   400
   MinimumWidth    =   600
   TabIndex        =   0
   Title           =   "Untitled"
   Top             =   0
   Visible         =   True
   Width           =   304
   _ImplicitInstance=   False
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebImageViewer ImageView1
      ControlID       =   ""
      Enabled         =   True
      Height          =   100
      HorizontalAlignment=   0
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   102
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Picture         =   0
      Scope           =   2
      SVGData         =   ""
      TabIndex        =   0
      Tooltip         =   ""
      Top             =   20
      URL             =   "https://assets.zionadventures.com/zacLogoRound.png"
      VerticalAlignment=   0
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
      _ProtectImage   =   False
   End
   Begin WebLabel Label1
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   60
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   5
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   0
      Text            =   "Please enter your six-digit reservation ID"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   140
      Underline       =   False
      Visible         =   True
      Width           =   294
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label2
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   44
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   5
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   0
      Text            =   "This ID can be found in your confirmation email"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   210
      Underline       =   False
      Visible         =   True
      Width           =   294
      _mPanelIndex    =   -1
   End
   Begin EnterReservationsControls EnterReservationsControls1
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      Height          =   114
      Index           =   -2147483648
      Indicator       =   ""
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      ScrollDirection =   0
      TabIndex        =   1
      Tooltip         =   ""
      Top             =   284
      Visible         =   True
      Width           =   304
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Shown()
		  EnterReservationsControls1.left = EnterReservationsControls1.parent.Width/2 - EnterReservationsControls1.Width/2
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function findReservationErrors(res as bookingtoolkit.reservation) As String
		  dim today as xojo.core.date = xojo.core.date.Now()
		  
		  if res.consentTypedName <> "" then
		    self.logEntry("Reservation has already been checked in")
		    return "That reservation has already been checked in."
		    
		  end if
		  
		  if res.endDate.compareTo(today) = -1 then
		    self.logentry("Reservation start date is in the past")
		    return "That reservation has already past. Please see an outfitter for assistance."
		    
		  end if
		  
		  if res.startDate.compareTo(today) = 1 then
		    dim daysOut as integer = DateModule.dateDiff(res.startDate, today) + 1
		    dim allowableDaysOut as string = app.preferences.Lookup("maxDaysOut", "1")
		    if daysOut > val(allowableDaysOut) then
		      self.logEntry("Reservation startdate is too far in the future to check in")
		      return "Your start date is too far in the future to check in. Please see an outfitter for assistance."
		      
		    end if
		    
		  end if
		  
		  return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub positionLabel(cc as WebLabel)
		  dim requiredLines as integer = 1
		  if me.width < kSingleLineLength then
		    cc.Width = me.Width - 10
		    
		  else
		    cc.Width = kSingleLineLength
		    
		  end 
		  
		  cc.Left = me.Width / 2 - cc.Width / 2
		  'dim estimatedLenth as double = app.getPixelsPerCharacter(cc.Style) * len(cc.Text)
		  'requiredLines = Ceil(app.getPixelsPerCharacter(cc.Style) * len(cc.Text) / cc.Width)
		  'cc.Height = requiredLines * app.getLineHeight(cc.Style)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub repositionControls()
		  positionLabel(Label1)
		  positionLabel(Label2)
		  verticallyPositionControls()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub show(cust as bookingtoolkit.customer, res as bookingtoolkit.reservation)
		  EnterReservationsControls1.clear()
		  Super.show(cust, res)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub verticallyPositionControls()
		  Label2.Top = Label1.top + Label1.Height + 10
		  EnterReservationsControls1.Top = Label2.Top + Label2.Height + kVerticalPadding
		End Sub
	#tag EndMethod


	#tag Constant, Name = kSingleLineLength, Type = Double, Dynamic = False, Default = \"460", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kVerticalPadding, Type = Double, Dynamic = False, Default = \"30", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Opening()
		  me.Picture = app.Logo
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EnterReservationsControls1
	#tag Event
		Sub GoBack()
		  session.goBack(mCustomer, mReservation)
		End Sub
	#tag EndEvent
	#tag Event
		Sub FailedToLocateReservation()
		  MessageBox "Unable to find your reservation, please check the ID and try again"
		End Sub
	#tag EndEvent
	#tag Event
		Sub ReservationFound(res as BookingToolkit.reservation)
		  dim errorMsg as string = findReservationErrors(res)
		  if errorMsg <> "" then
		    MessageBox errorMsg
		    return
		    
		  end if
		  
		  session.addPageToPath(self)
		  mReservation = res
		  
		  try
		    self.logEntry("Loading customer...")
		    mCustomer = session.ERC_Controller.getCustomer(res.customerSerial)
		    session.ExistingReservation.show(mCustomer, mReservation) 
		    self.logEntry("Success")
		    
		  catch err as BookingToolkit.Exceptions.NoSuchItemException
		    self.logEntry(754192, "Unable to match customer to existing reservation", err)
		    session.PhoneNumberSearch.show(mCustomer, mReservation)
		    
		  end try
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
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
		Name="LayoutType"
		Visible=true
		Group="Behavior"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
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
		Name="AllowTabOrderWrap"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
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
		Name="LayoutDirection"
		Visible=true
		Group="WebView"
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
		Name="Enabled"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=false
		Group="ID"
		InitialValue="-2147483648 "
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
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
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
