#tag WebPage
Begin mPage NewCustomerPage
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   783
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
      Height          =   50
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
      Text            =   "Your Details"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   132
      Underline       =   False
      Visible         =   True
      Width           =   294
      _mPanelIndex    =   -1
   End
   Begin CustomerInfoControl CustomerInfoControl1
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      Height          =   431
      Index           =   -2147483648
      Indicator       =   ""
      isMaskingContent=   False
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   5
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
      Top             =   268
      Visible         =   True
      Width           =   294
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin MovementControl MovementControl1
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      Height          =   44
      Index           =   -2147483648
      Indicator       =   ""
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   1
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
      Top             =   719
      Visible         =   True
      Width           =   302
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin weblabel StartNewLabel
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   78
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
      Text            =   "We were unable to find a matching record for you. Let's get a new record going."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   182
      Underline       =   False
      Visible         =   True
      Width           =   294
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Method, Flags = &h0
		Sub show(cust as bookingtoolkit.customer, res as bookingtoolkit.reservation)
		  CustomerInfoControl1.showCustomer(cust)
		  MovementControl1.ActivatePrimary()
		  Super.show(cust, res)
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Opening()
		  me.Picture = app.Logo
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CustomerInfoControl1
	#tag Event
		Sub Invalid()
		  self.logEntry("Invalid customer information")
		  CustomerInfoControl1.highlightErrors()
		  '-----
		  dim errormessagebox as new MessageBoxWebDialog
		  if errormessagebox <> nil then
		    errormessagebox.label1.text = "Please fix the marked errors"
		    errormessagebox.show
		  end if
		  '-----
		  'MessageBox "Please fix the marked errors"
		  MovementControl1.ActivatePrimary()
		End Sub
	#tag EndEvent
	#tag Event
		Sub ValidCustomerReady(cust as bookingtoolkit.customer)
		  self.logEntry("Valid customer information")
		  MovementControl1.ActivatePrimary()
		  mCustomer = cust
		  try
		    self.logEntry("Creating new customer record...")
		    mCustomer.serial = session.ERC_Controller.createNewCustomer(mCustomer)
		    self.logEntry("Success")
		    
		  catch err as BookingToolkit.Exceptions.DuplicateCustomerException
		    self.logEntry(192845, "New customer record matches one in database", err)
		    self.logEntry("Redirecting user, records were not merged")
		    dim customers() as bookingtoolkit.customer
		    try
		      customers.Append(session.ERC_Controller.getCustomer(err.originalCustomerSerial))
		      session.SelectPerson.show(customers, mReservation)
		      
		      return
		      
		    catch ee as BookingToolkit.Exceptions.CustomerException
		      self.logEntry(765272, "Unable to load previous customer information", ee)
		      '-----
		      dim errormessagebox as new MessageBoxWebDialog
		      if errormessagebox <> nil then
		        errormessagebox.label1.text = "There was an error storing your information, please try again"
		        errormessagebox.show
		      end if
		      '-----
		      'MessageBox "There was an error storing your information, please try again"
		      
		      return
		      
		    end try
		    
		  catch err as BookingToolkit.Exceptions.CustomerException
		    self.logEntry(875427, "Unable to store new customer information", err)
		    '-----
		    dim errormessagebox as new MessageBoxWebDialog
		    if errormessagebox <> nil then
		      errormessagebox.label1.text = "There was an error storing your information, please try again"
		      errormessagebox.show
		    end if
		    '-----
		    'MessageBox "There was an error storing your information, please try again"
		    
		    return
		    
		  end try
		  
		  session.addPageToPath(self)
		  session.InformedConsent.Show(mCustomer, mReservation)
		  'session.StoreCreditCard.show(mCustomer, mReservation)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(msg as string)
		  self.logEntry(msg, SimpleLogger.LogLevels.Warning)
		  '-----
		  dim errormessagebox as new MessageBoxWebDialog
		  if errormessagebox <> nil then
		    errormessagebox.label1.text = "There was an error validating your information, please try again"
		    errormessagebox.show
		  end if
		  '-----
		  'MessageBox "There was an error validating your information, please try again"
		  MovementControl1.ActivatePrimary()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MovementControl1
	#tag Event
		Sub PrimaryButtonPressed()
		  self.logEntry("Validating customer informaiton...")
		  me.deactivatePrimary()
		  CustomerInfoControl1.validate()
		End Sub
	#tag EndEvent
	#tag Event
		Sub SecondaryButtonPressed()
		  session.goBack(mCustomer, mReservation)
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
