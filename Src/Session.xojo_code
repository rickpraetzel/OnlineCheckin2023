#tag Class
Protected Class Session
Inherits WebSession
#tag Session
  interruptmessage=We are having trouble communicating with the server. Please wait a moment while we attempt to reconnect.
  disconnectmessage=You have been disconnected from this application.
  confirmmessage=
  AllowTabOrderWrap=True
  ColorMode=0
#tag EndSession
	#tag Event
		Sub Closing(appQuitting as Boolean)
		  if mysqldb <> Nil then
		    mysqldb.close()
		    
		  end if
		  
		  self.logEntry("SESSION CLOSED")
		End Sub
	#tag EndEvent

	#tag Event
		Sub JavaScriptError(ErrorName as String, ErrorMessage as String, ErrorStack as String)
		  self.logEntry(872694, "JavaScript Error: " + ErrorMessage, SimpleLogger.LogLevels.Critical)
		  self.Quit()
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  self.logEntry("SESSION START")
		  secureConnection()
		  
		  if createDatabaseConnection() then 
		    'self.Timeout = kLongTimeout
		    try 
		      ERC_Controller = new BookingToolkit.Controller(mysqldb)
		      
		    catch err as Xojo.IO.IOException
		      self.logEntry(167926, "Unable to create ERC_Controller", err, SimpleLogger.LogLevels.Critical)
		      '-----
		      dim errormessagebox as new MessageBoxWebDialog
		      if errormessagebox <> nil then
		        errormessagebox.label1.text = "Internal server error"
		        errormessagebox.show
		      end if
		      '-----
		      'MessageBox "Internal server error"
		      self.Quit()
		      
		    end try
		    
		    initializeWindows()
		    try
		      InformedConsent.setConsentText(getInformedConsentText())
		      
		    catch err as Xojo.IO.IOException
		      self.logEntry(853679, "Unable to get consent text", err)
		      
		    end try
		    
		    'if checkIsLocalConntection then
		    'self.logEntry("Connection found to be local, bypassing login page")
		    'ReservationCheck.show()
		    ''self.Timeout = 0
		    'self.isLocal = true
		    '
		    'else
		    self.logEntry("Loading login page")
		    'LoginPage.Show()
		    session.PhoneNumberSearch.show(new bookingtoolkit.customer(), new bookingtoolkit.reservation())
		    'end if
		    '----------
		    todaysdate = new Date
		    TWILIOSOCKET1 = new TWILIOSOCKET
		    twiliomodule.LoadTwilioSettings
		    self.logEntry("SESSION STARTUP COMPLETE")
		    '----------
		  else
		    self.logEntry("Unable to create a database connection", SimpleLogger.LogLevels.Critical)
		    '-----
		    dim errormessagebox as new MessageBoxWebDialog
		    if errormessagebox <> nil then
		      errormessagebox.label1.text = "Internal server error"
		      errormessagebox.show
		    end if
		    '-----
		    'MessageBox "Internal server error" 
		    self.Quit()
		    
		  end if
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(Error As RuntimeException) As Boolean
		  self.logEntry(185936, "An unhandled exception was thrown", error, SimpleLogger.LogLevels.Critical)
		  '-----
		  dim errormessagebox as new MessageBoxWebDialog
		  if errormessagebox <> nil then
		    errormessagebox.label1.text = "There was an unknown error"
		    errormessagebox.show
		  end if
		  '-----
		  'MessageBox "There was an unknown error"
		  self.Quit()
		  
		  return true
		End Function
	#tag EndEvent

	#tag Event
		Sub UserTimedOut()
		  self.logEntry("Session timeout triggered")
		  
		  MessageBox "Your session has timed out, please start over"
		  self.Quit()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub addPageToPath(page as mPage)
		  previousPages.Append(page)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function checkIsLocalConntection() As Boolean
		  'const kDefaultLocalSearch = "192\.168\.(0|1)\.\d{1,3}"
		  'dim rg as new RegEx()
		  'rg.SearchPattern = app.preferences.Lookup("localAddressRegex", kDefaultLocalSearch)
		  'dim match as RegExMatch = rg.Search(self.RemoteAddress)
		  '
		  'return match <> Nil
		  
		  //TODO: we will need to do something about this...
		  return self.URLParameter("inside") = "true"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function createDatabaseConnection() As Boolean
		  self.logEntry("making connection to database")
		  
		  self.mysqldb = app.getDatabaseConnection()
		  
		  return self.mysqldb.Connect()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getInformedConsentText() As text
		  dim stmt as string =_
		  "SELECT content FROM informedconsent WHERE serial = 1002"
		  dim rs as RecordSet = mysqldb.SQLSelect(stmt)
		  if rs = nil or rs.RecordCount = 0 then
		    dim err as new Xojo.IO.IOException()
		    raise err
		    
		  end if
		  
		  return UtilityFunctions.stringToText(rs.field("content").StringValue)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getMySQLError() As string
		  if mysqldb <> Nil and mysqldb.Error then
		    return str(mysqldb.ErrorCode) + ": " + mysqldb.ErrorMessage
		    
		  end if
		  
		  return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub goBack(cust as bookingtoolkit.customer, res as bookingtoolkit.reservation)
		  if UBound(previousPages) >= 0 then 
		    previousPages.pop().Show(cust, res)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub initializeWindows()
		  dim xx as integer = Ticks()
		  self.logEntry("Caching pages...")
		  done = new DonePage()
		  'EnterReservation = new EnterReservationPage()
		  ExistingReservation = new ExistingReservationPage()
		  InformedConsent = new InformedConsentPage()
		  NewCustomer = new NewCustomerPage()
		  PhoneNumberSearch = new PhoneNumberSearchPage()
		  LastNameSearch = new LastNameSearchPage()
		  RentalDetails = new RentalDetailsPage()
		  'ReservationCheck = new ReservationCheckPage()
		  ReturnCustomer = new ReturnCustomerPage()
		  SelectPerson = new SelectPersonPage()
		  StoreCreditCard = new StoreCreditCardPage()
		  xx = ticks() - xx
		  dim miliseconds as double = (xx / 60) * 1000
		  self.logEntry("Done (" + str(miliseconds) + "ms)")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub logEntry(errNum as integer, msg as string, err as runtimeException, logLevel as SimpleLogger.LogLevels = SimpleLogger.LogLevels.Warning)
		  dim entry as new LogLineItem()
		  
		  entry.sessionID = self.Identifier
		  entry.remoteAddress = self.RemoteAddress
		  entry.msg = msg
		  entry.errorNum = errNum
		  entry.err = err
		  entry.logLevel = logLevel
		  entry.mysqlError = getMySQLError()
		  
		  app.logEntry(entry)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub logEntry(errNum as integer, msg as string, logLevel as SimpleLogger.LogLevels = SimpleLogger.LogLevels.Debug)
		  dim entry as new LogLineItem()
		  
		  entry.sessionID = self.Identifier
		  entry.remoteAddress = self.RemoteAddress
		  entry.msg = msg
		  entry.errorNum = errNum
		  entry.logLevel = logLevel
		  entry.mysqlError = getMySQLError()
		  
		  app.logEntry(entry)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub logEntry(entry as LogLineItem)
		  entry.remoteAddress = self.RemoteAddress
		  entry.sessionID = self.Identifier
		  entry.mysqlError = getMySQLError()
		  
		  app.logEntry(entry)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub logEntry(msg as string, logLevel as SimpleLogger.LogLevels = SimpleLogger.LogLevels.Debug)
		  dim entry as new LogLineItem()
		  
		  entry.sessionID = self.Identifier
		  entry.remoteAddress = self.RemoteAddress
		  entry.msg = msg
		  entry.errorNum = 0
		  entry.logLevel = logLevel
		  entry.mysqlError = getMySQLError()
		  
		  app.logEntry(entry)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub reset()
		  self.logEntry("Resetting session")
		  redim previousPages(-1)
		  initializeWindows()
		  try
		    InformedConsent.setConsentText(getInformedConsentText())
		    
		  catch err as Xojo.IO.IOException
		    self.logEntry(853679, "Unable to get consent text", err)
		    
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub secureConnection()
		  if not DebugBuild then
		    if not self.Secure then
		      self.logEntry("Redirecting to secure address")
		      gotourl(app.preferences.Lookup("appURL", "https://checkin.zionadventures.com"))
		      
		    end if
		    
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Done As DonePage
	#tag EndProperty

	#tag Property, Flags = &h0
		EnterReservation As EnterReservationPage
	#tag EndProperty

	#tag Property, Flags = &h0
		ERC_Controller As BookingToolkit.Controller
	#tag EndProperty

	#tag Property, Flags = &h0
		ExistingReservation As ExistingReservationPage
	#tag EndProperty

	#tag Property, Flags = &h0
		InformedConsent As InformedConsentPage
	#tag EndProperty

	#tag Property, Flags = &h0
		isLocal As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastNameSearch As LastNameSearchPage
	#tag EndProperty

	#tag Property, Flags = &h21
		Private logger As SimpleLogger
	#tag EndProperty

	#tag Property, Flags = &h0
		mysqldb As MySQLCommunityServer
	#tag EndProperty

	#tag Property, Flags = &h0
		NewCustomer As NewCustomerPage
	#tag EndProperty

	#tag Property, Flags = &h0
		PhoneNumberSearch As PhoneNumberSearchPage
	#tag EndProperty

	#tag Property, Flags = &h21
		Private previousPages() As mPage
	#tag EndProperty

	#tag Property, Flags = &h0
		RentalDetails As RentalDetailsPage
	#tag EndProperty

	#tag Property, Flags = &h0
		ReservationCheck As ReservationCheckPage
	#tag EndProperty

	#tag Property, Flags = &h0
		ReturnCustomer As ReturnCustomerPage
	#tag EndProperty

	#tag Property, Flags = &h0
		SelectPerson As SelectPersonPage
	#tag EndProperty

	#tag Property, Flags = &h0
		StoreCreditCard As StoreCreditCardPage
	#tag EndProperty

	#tag Property, Flags = &h0
		TWILIOSOCKET1 As TWILIOSOCKET
	#tag EndProperty


	#tag Constant, Name = ErrorDialogCancel, Type = String, Dynamic = True, Default = \"Do Not Send", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorDialogMessage, Type = String, Dynamic = True, Default = \"This application has encountered an error and cannot continue.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorDialogQuestion, Type = String, Dynamic = True, Default = \"Please describe what you were doing right before the error occurred:", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorDialogSubmit, Type = String, Dynamic = True, Default = \"Send", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorThankYou, Type = String, Dynamic = True, Default = \"Thank You", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorThankYouMessage, Type = String, Dynamic = True, Default = \"Your feedback helps us make improvements.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kLongTimeout, Type = Double, Dynamic = False, Default = \"600", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NoJavascriptInstructions, Type = String, Dynamic = True, Default = \"To turn Javascript on\x2C please refer to your browser settings window.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NoJavascriptMessage, Type = String, Dynamic = True, Default = \"Javascript must be enabled to access this page.", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="ColorMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="WebSession.ColorModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Auto"
				"1 - Light"
				"2 - Dark"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserPrefersDarkMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserTimeout"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisconnectMessage"
			Visible=true
			Group="Behavior"
			InitialValue="You have been disconnected from this application."
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InterruptionMessage"
			Visible=true
			Group="Behavior"
			InitialValue="We are having trouble communicating with the server. Please wait a moment while we attempt to reconnect."
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_LastMessageTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabOrderWrap"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConfirmDisconnectMessage"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsDarkMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClientHeight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClientWidth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HashTag"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Identifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LanguageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LanguageRightToLeft"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Platform"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
			#tag EnumValues
				"0 - Unknown"
				"1 - Macintosh"
				"2 - Windows"
				"3 - Linux"
				"4 - Wii"
				"5 - PS3"
				"6 - iPhone"
				"7 - iPodTouch"
				"8 - Blackberry"
				"9 - WebOS"
				"10 - iPad"
				"11 - AndroidTablet"
				"12 - AndroidPhone"
				"13 - RaspberryPi"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemoteAddress"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScaleFactor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="URL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_baseurl"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isLocal"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
