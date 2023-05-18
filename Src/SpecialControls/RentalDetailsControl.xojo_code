#tag WebContainerControl
Begin WebContainer RentalDetailsControl
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   267
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
      Left            =   11
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   0
      Text            =   "Group Size:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   8
      Underline       =   False
      Visible         =   True
      Width           =   145
      _mPanelIndex    =   -1
   End
   Begin WebPopupMenu GroupSizeMenu
      ControlID       =   ""
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   "1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12"
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   168
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      RowCount        =   0
      Scope           =   2
      SelectedRowIndex=   0
      SelectedRowValue=   ""
      TabIndex        =   1
      Tooltip         =   ""
      Top             =   9
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label2
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   35
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   6
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   2
      Text            =   "Day Returning gear:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   61
      Underline       =   False
      Visible         =   True
      Width           =   290
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
      Left            =   58
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   3
      Text            =   "TODAY"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   108
      Underline       =   False
      Visible         =   True
      Width           =   200
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
      Left            =   58
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   4
      Text            =   "TOMORROW"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   162
      Underline       =   False
      Visible         =   True
      Width           =   200
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
      Left            =   58
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   5
      Text            =   "OTHER"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   217
      Underline       =   False
      Visible         =   True
      Width           =   200
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Shown()
		  Var v As Variant
		  Var d As DateTime
		  d = DateTime.Now
		  
		  
		  if d.hour >= 14 then
		    label3.Visible = false
		  else
		    label3.Visible = true
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub clear()
		  GroupSizeMenu.selectedrowindex = -1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getGroupSize() As integer
		  return val(GroupSizeMenu.RowValueAt(GroupSizeMenu.SelectedRowIndex))
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DateSelected(dd as Xojo.Core.Date)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event NeedsDate()
	#tag EndHook


#tag EndWindowCode

#tag Events GroupSizeMenu
	#tag Event
		Sub Opening()
		  me.selectedrowindex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label3
	#tag Event
		Sub Pressed()
		  
		  RaiseEvent DateSelected(xojo.core.date.now())
		  if xojo.core.date.now.hour >= 14 then
		    if xojo.core.date.now.year = todaysdate.year AND xojo.core.date.now.month = todaysdate.month AND xojo.core.date.now.day = todaysdate.day then 'send Rick a text
		      SendSMS("Post 2pm end date same as today specified throughTODAY button.")
		    end if
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label4
	#tag Event
		Sub Pressed()
		  dim interval as new Xojo.Core.DateInterval(0,0,1,0,0,0,0)
		  RaiseEvent DateSelected(xojo.core.date.now() + interval)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label5
	#tag Event
		Sub Pressed()
		  RaiseEvent NeedsDate
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
