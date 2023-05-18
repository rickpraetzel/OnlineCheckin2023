#tag WebPage
Begin mPage StoreCreditCardPage
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   720
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
      Text            =   "Credit Card"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   132
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
      Height          =   128
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
      Text            =   "Storing your credit card now will allow for a faster and contactless checkout later"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   192
      Underline       =   False
      Visible         =   True
      Width           =   294
      _mPanelIndex    =   -1
   End
   Begin WebLabel Policies
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   30
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
      Text            =   "View Policies"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   330
      Underline       =   False
      Visible         =   True
      Width           =   294
      _mPanelIndex    =   -1
   End
   Begin CCInfoControl CCInfoControl1
      ControlID       =   ""
      Enabled         =   True
      Height          =   32
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
      Top             =   370
      Visible         =   False
      Width           =   32
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin ANetProfileManager ANetProfileManager1
      Index           =   -2147483648
      isProcessingLiveRequests=   False
      Left            =   0.0
      LockedInPosition=   False
      Scope           =   2
      TabPanelIndex   =   0
      Top             =   0.0
   End
   Begin WebTimer RequestTimer
      ControlID       =   ""
      Enabled         =   True
      Index           =   -2147483648
      Left            =   0.0
      Location        =   0
      LockedInPosition=   False
      Period          =   500
      RunMode         =   1
      Scope           =   2
      Top             =   0.0
      _mPanelIndex    =   -1
   End
   Begin WebTimer AdvancePageTimer
      ControlID       =   ""
      Enabled         =   True
      Index           =   -2147483648
      Left            =   0.0
      Location        =   0
      LockedInPosition=   False
      Period          =   100
      RunMode         =   0
      Scope           =   2
      Top             =   0.0
      _mPanelIndex    =   -1
   End
   Begin MovementControl MovementControl1
      ControlID       =   ""
      Enabled         =   True
      Height          =   32
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
      Top             =   638
      Visible         =   False
      Width           =   32
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin PoliciesDialogue PoliciesDialogue1
      ControlID       =   ""
      Enabled         =   True
      Height          =   425
      Index           =   -2147483648
      Indicator       =   ""
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   1
      Tooltip         =   ""
      Top             =   20
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
		  mySessionID = Session.Identifier
		  myRemoteAddress = session.RemoteAddress
		  ANetProfileManager1.setAuthentication(app.getANetMerchantAuthentication())
		  MovementControl1.setSecondaryButtonText("SKIP")
		  MovementControl1.setPrimaryButtonText("SUBMIT")
		  if not DebugBuild then
		    ANetProfileManager1.isProcessingLiveRequests = True
		    
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub clear()
		  CCInfoControl1.clear()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub createCustomerProfile()
		  currentState = ValidState.CreateCustomerProfile
		  dim req as new CreateCustomerProfileReq(getCustomerProfile())
		  nextRequest = req
		  RequestTimer.Reset()
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub createPaymentProfile(aNetCustID as string)
		  currentState = ValidState.CreatePaymentProfile
		  dim req as new CreateCustomerPaymentProfileReq(aNetCustID, CCInfoControl1.getCreditCard())
		  nextRequest = req
		  RequestTimer.Reset()
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function extractProfileID(msg as string) As Text
		  dim profileID as string
		  dim currentChar as string
		  for ii as integer = 1 to len(msg)
		    currentChar = mid(msg, ii, 1)
		    if IsNumeric(currentChar) then
		      profileID = profileID + currentChar
		      
		    end if
		    
		  next
		  
		  return UtilityFunctions.StringToText(profileID)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub getANetCustomerProfile()
		  currentState = ValidState.RecoverPaymentProfile
		  dim req as new GetCustomerProfileReq(mCustomer.aNetProfileID)
		  nextRequest = req
		  RequestTimer.Reset()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub getANetCustomerProfile1()
		  currentState = ValidState.RecoverPaymentProfile
		  dim req as new GetCustomerProfileReq(mCustomer.aNetProfileID)
		  nextRequest = req
		  RequestTimer.Reset()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getCustomerProfile() As CustomerProfile
		  dim theName as new Name(mCustomer.name.firstname,_
		  mCustomer.name.lastname)
		  dim builder as new CustomerProfileBuilder(theName, mCustomer.serial.toString())
		  
		  return builder._
		  setEmail(mCustomer.email)._
		  setPhoneNumber(mCustomer.phoneNumber.getFormattedNumber())._
		  build()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub logEntry(errNum as integer, msg as string, err as runtimeException, logLevel as SimpleLogger.LogLevels = SimpleLogger.LogLevels.Debug)
		  dim entry as new LogLineItem()
		  
		  entry.sessionID = mySessionID
		  entry.remoteAddress = myRemoteAddress
		  entry.msg = msg
		  entry.errorNum = errNum
		  entry.err = err
		  entry.logLevel = logLevel
		  if mCustomer <> Nil then
		    entry.custSerial = mCustomer.serial
		    
		  end if
		  
		  app.logEntry(entry)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub logEntry(errNum as integer, msg as string, logLevel as SimpleLogger.LogLevels = SimpleLogger.LogLevels.Debug)
		  dim entry as new LogLineItem()
		  
		  entry.sessionID = mySessionID
		  entry.remoteAddress = myRemoteAddress
		  entry.msg = msg
		  entry.errorNum = errNum
		  entry.logLevel = logLevel
		  if mCustomer <> Nil then
		    entry.custSerial = mCustomer.serial
		    
		  end if
		  
		  app.logEntry(entry)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub logEntry(msg as string, logLevel as SimpleLogger.LogLevels = SimpleLogger.LogLevels.Debug)
		  dim entry as new LogLineItem()
		  
		  entry.sessionID = mySessionID
		  entry.remoteAddress = myRemoteAddress
		  entry.msg = msg
		  entry.errorNum = 0
		  entry.logLevel = logLevel
		  if mCustomer <> Nil then
		    entry.custSerial = mCustomer.serial
		    
		  end if
		  
		  app.logEntry(entry)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub processError(rsp as ProfileResponse)
		  select case rsp.lastErrorCode
		  case app.kDuplicateRecordCode
		    select case currentState
		    case  ValidState.CreateCustomerProfile
		      self.logEntry("Error, duplicate customer. Retrieving profile...")
		      mCustomer.aNetProfileID = extractProfileID(rsp.errorMessage)
		      getANetCustomerProfile()
		      
		      return 
		      
		    case ValidState.CreatePaymentProfile
		      self.logEntry("Error, duplicate payment profile. Udating profile...")
		      mCustomer.aNetProfileID = rsp.customerProfileID
		      mCustomer.ANetPaymentProfileID = rsp.paymentProfiles(0).paymentProfileID
		      updateCreditCard()
		      
		      return
		      
		    else
		      self.logEntry(128653, "Unknown duplicate error received: " + rsp.errorMessage, SimpleLogger.LogLevels.Warning)
		      MessageBox "An error occured while trying to store your credit card information. Please try again."
		      
		    end select
		    
		  case app.kDecline,app.kLengthError,app.kExpiredError
		    self.logEntry(128654, "Decline/Generic Error(" + rsp.lastErrorCode + "): " + rsp.errorMessage)
		    CCInfoControl1.setHighlights(rsp)
		    MessageBox rsp.errorMessage
		    
		  else
		    self.logEntry(128655, "Unknown error (" + rsp.lastErrorCode + "): " + rsp.errorMessage, SimpleLogger.LogLevels.Warning)
		    CCInfoControl1.setHighlights(rsp)
		    MessageBox "Please check the information and try again"
		    
		  end Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub show(cust as bookingtoolkit.customer, res as bookingtoolkit.reservation)
		  self.CCInfoControl1.clearHighlights()
		  MovementControl1.ActivatePrimary()
		  Super.show(cust, res)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub updateCreditCard()
		  currentState = ValidState.UpdatePaymentProfile
		  dim req as new UpdateCustomerPaymentProfileReq(mCustomer.aNetProfileID,_
		  mCustomer.ANetPaymentProfileID,_
		  CCInfoControl1.getCreditCard())
		  nextRequest = req
		  RequestTimer.Reset()
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private currentState As ValidState
	#tag EndProperty

	#tag Property, Flags = &h21
		Private myRemoteAddress As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mySessionID As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private nextRequest As ANetProfileRequest
	#tag EndProperty


	#tag Enum, Name = ValidState, Flags = &h21
		CreateCustomerProfile
		  CreatePaymentProfile
		  LoadCustomerProfile
		  UpdatePaymentProfile
		RecoverPaymentProfile
	#tag EndEnum


#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Opening()
		  me.Picture = app.Logo
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Policies
	#tag Event
		Sub Pressed()
		  PoliciesDialogue1.show()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ANetProfileManager1
	#tag Event
		Sub Error(err as xojo.Net.NetException)
		  self.logEntry(653291, "Error communication with ANet", err)
		  MessageBox "An error occured while trying to store your credit card informaiton, please try again."
		  MovementControl1.ActivatePrimary()
		End Sub
	#tag EndEvent
	#tag Event
		Sub ResponseRecieved(response as ProfileResponse)
		  using UtilityFunctions
		  
		  if response.isSuccess then
		    select case currentState
		    case ValidState.CreateCustomerProfile
		      self.logEntry("Sucess. Creating payment profile...")
		      mCustomer.aNetProfileID = response.customerProfileID
		      createPaymentProfile(mCustomer.aNetProfileID)
		      
		    case ValidState.CreatePaymentProfile
		      self.logEntry("Sucess. Advancing page...")
		      mCustomer.ANetPaymentProfileID = response.paymentProfiles(0).paymentProfileID //XXX:ASSUMES THEY ARE ORDED NEWEST TO OLDEST
		      AdvancePageTimer.RunMode = webtimer.runmodes.Single
		      
		    case ValidState.UpdatePaymentProfile
		      self.logEntry("Sucess. Advancing page...")
		      AdvancePageTimer.RunMode = webtimer.runmodes.Single
		      
		    case ValidState.RecoverPaymentProfile
		      self.logEntry("Sucess. Creating payment profile...")
		      createPaymentProfile(mCustomer.aNetProfileID)
		      
		    end select
		    
		  else
		    processError(response)
		    MovementControl1.ActivatePrimary()
		    
		  end if
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RequestTimer
	#tag Event
		Sub Run()
		  if nextRequest <> Nil then 
		    try
		      ANetProfileManager1.processRequest(nextRequest)
		      
		    catch err as Xojo.Core.UnsupportedOperationException
		      self.logEntry(187533, "Error processing ANet request: " + nextRequest.getJSON().ToString(), err, SimpleLogger.LogLevels.Critical)
		      MessageBox "An error has occured while trying to store your credit card information. Please try again."
		      
		    end try
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AdvancePageTimer
	#tag Event
		Sub Run()
		  session.addPageToPath(self)
		  if mReservation.isInDatabase then
		    session.InformedConsent.Show(mCustomer, mReservation) 
		    
		  else
		    session.RentalDetails.Show(mCustomer, mReservation)
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MovementControl1
	#tag Event
		Sub PrimaryButtonPressed()
		  if not CCInfoControl1.isValidData then
		    CCInfoControl1.setHighlights()
		    MessageBox "Please complete all required fields"
		    
		    return
		    
		  end if
		  
		  me.deactivatePrimary()
		  if mCustomer.aNetProfileID = "" then 
		    createCustomerProfile()
		    
		    return
		    
		  end if 
		  
		  if mCustomer.ANetPaymentProfileID = "" then
		    createPaymentProfile(mCustomer.aNetProfileID)
		    
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub SecondaryButtonPressed()
		  session.addPageToPath(self)
		  session.InformedConsent.show(mcustomer, mReservation)
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
