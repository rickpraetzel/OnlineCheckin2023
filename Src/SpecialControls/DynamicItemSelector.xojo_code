#tag WebContainerControl
Begin WebContainer DynamicItemSelector
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   60
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
   Begin WebLabel NotListedButton
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   45
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   13
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   2
      TabIndex        =   0
      Text            =   "I AM NOT LISTED"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   8
      Underline       =   False
      Visible         =   True
      Width           =   280
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub clearControls()
		  for each custControl as ItemSelector in dynamicControls
		    RemoveHandler custControl.Selected, WeakAddressOf handleSelected
		    custControl.Close()
		    
		  next
		  
		  Redim dynamicControls(-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub handleSelected(cc as ItemSelector, item as variant)
		  RaiseEvent ItemSelected(item)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadItems(customers() as bookingtoolkit.customer)
		  const kVerticalPadding = 30
		  const kControlHeight = 60
		  const kControlWidth = 304
		  dim currentTop as integer = 1
		  dim xCoord as integer = me.Width/2 - kControlWidth/2
		  for each customer as bookingtoolkit.customer in customers
		    dim custControl as new ItemSelector(customer)
		    custControl.LockLeft = false
		    custControl.LockRight = false 
		    custControl.LockHorizontal = true
		    custControl.EmbedWithin(self, xCoord, currentTop, kControlWidth, kControlHeight)
		    AddHandler custControl.Selected, WeakAddressOf handleSelected
		    dynamicControls.Append(custControl)
		    currentTop = currentTop + kControlHeight + kVerticalPadding
		    
		  next
		  
		  
		  NotListedButton.Top = currentTop
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadItems(reservations() as BookingToolkit.Reservation, specs() as CalendarToolkit.TripSpecification)
		  if UBound(reservations) <> UBound(specs) then
		    session.logEntry(763572, "The amount of reservations does not match the amount of specifications passed", SimpleLogger.LogLevels.Warning)
		    return
		    
		  end if
		  
		  const kVerticalPadding = 30
		  const kControlHeight = 60
		  const kControlWidth = 304
		  dim currentTop as integer = 1
		  dim xCoord as integer = me.Width/2 - kControlWidth/2
		  for ii as integer = 0 to UBound(reservations)
		    dim mcontrol as new ItemSelector(reservations(ii), specs(ii))
		    mControl.LockLeft = false
		    mControl.LockRight = false 
		    mControl.LockHorizontal = true
		    mControl.EmbedWithin(self, xCoord, currentTop, kControlWidth, kControlHeight)
		    AddHandler mControl.Selected, WeakAddressOf handleSelected
		    dynamicControls.Append(mControl)
		    currentTop = currentTop + kControlHeight + kVerticalPadding
		    
		  next
		  
		  NotListedButton.Top = currentTop
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setDeclineText(value as string)
		  NotListedButton.Text = value
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ItemNotFound()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ItemSelected(item as variant)
	#tag EndHook


	#tag Property, Flags = &h21
		Private dynamicControls() As ItemSelector
	#tag EndProperty


#tag EndWindowCode

#tag Events NotListedButton
	#tag Event
		Sub Pressed()
		  RaiseEvent ItemNotFound
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
