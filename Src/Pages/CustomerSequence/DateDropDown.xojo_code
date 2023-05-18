#tag WebPage
Begin WebDialog DateDropDown
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   230
   Index           =   0
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   LockVertical    =   False
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   245
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebPopupMenu PopupMenu1
      ControlID       =   ""
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      RowCount        =   0
      Scope           =   0
      SelectedRowIndex=   -1
      SelectedRowValue=   ""
      TabIndex        =   0
      Tooltip         =   ""
      Top             =   60
      Visible         =   True
      Width           =   205
      _mPanelIndex    =   -1
   End
   Begin WebPopupMenu PopupMenu2
      ControlID       =   ""
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      RowCount        =   0
      Scope           =   0
      SelectedRowIndex=   -1
      SelectedRowValue=   ""
      TabIndex        =   0
      Tooltip         =   ""
      Top             =   105
      Visible         =   True
      Width           =   205
      _mPanelIndex    =   -1
   End
   Begin WebPopupMenu PopupMenu3
      ControlID       =   ""
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      RowCount        =   0
      Scope           =   0
      SelectedRowIndex=   -1
      SelectedRowValue=   ""
      TabIndex        =   0
      Tooltip         =   ""
      Top             =   15
      Visible         =   True
      Width           =   205
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label1
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   45
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   15
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   2
      TabIndex        =   0
      Text            =   "CANCEL"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   165
      Underline       =   False
      Visible         =   True
      Width           =   105
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label2
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   45
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   125
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   2
      TabIndex        =   0
      Text            =   "SUBMIT"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   165
      Underline       =   False
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Opening()
		  self.mDate = new date()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub loadDropDowns()
		  //Populates contents of the drop down 
		  
		  dim d as new date()
		  
		  //Populate months
		  self.PopupMenu1.RemoveAllRows()
		  self.popupmenu1.addrow("January")
		  self.popupmenu1.addrow("February")
		  self.popupmenu1.addrow("March")
		  self.popupmenu1.addrow("April")
		  self.popupmenu1.addrow("May")
		  self.popupmenu1.addrow("June")
		  self.popupmenu1.addrow("July")
		  self.popupmenu1.addrow("August")
		  self.popupmenu1.addrow("September")
		  self.popupmenu1.addrow("October")
		  self.popupmenu1.addrow("November")
		  self.popupmenu1.addrow("December")
		  
		  for ii as integer = 0 to self.popupmenu1.rowcount - 1
		    self.popupmenu1.RowTagat(ii) = str(ii + 1)
		    
		  next
		  
		  //Populate years
		  self.PopupMenu3.RemoveAllRows()
		  self.PopupMenu3.AddRow(str(d.Year))
		  self.PopupMenu3.AddRow(Str(d.year + 1))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub show(optional thedate as Xojo.Core.Date)
		  //Overriddenshow. Initialize to a day
		  //@param theDate: [OPTIONAL] The date to initialize to
		  
		  if thedate <> nil then
		    if thedate.hour >= 14 then
		      Var di As New Xojo.Core.DateInterval
		      di.days = 1 // 2 months
		      thedate = thedate.now + di
		    end if
		  end if
		  dim theDay,theMonth,theYear as string
		  
		  self.loadDropDowns()
		  
		  if theDate <> Nil then
		    theDay = str(thedate.Day)
		    theMonth = str(theDate.Month)
		    theYear = str(theDate.Year)
		    
		  else
		    //Init to today
		    dim d as new date()
		    
		    theDay = str(d.Day)
		    theMonth = str(d.Month)
		    theYear = str(d.Year)
		    
		  end if 
		  
		  //MATCH YEAR
		  for ii as integer = 0 to self.PopupMenu3.rowcount - 1
		    if self.PopupMenu3.rowvalueat(ii) = theYear then
		      self.PopupMenu3.selectedrowindex = ii
		      exit
		      
		    end if 
		    
		  next
		  
		  //MATCH MONTH
		  for ii as integer = 0 to self.PopupMenu1.rowcount - 1
		    if self.PopupMenu1.RowTagat(ii) = theMonth then
		      self.PopupMenu1.selectedrowindex = ii
		      exit
		      
		    end if 
		    
		  next
		  
		  //MATCH DAY
		  for ii as integer = 0 to self.PopupMenu2.rowcount - 1
		    if self.PopupMenu2.RowTagat(ii) = theDay then
		      self.PopupMenu2.selectedrowindex = ii
		      exit
		      
		    end if
		    
		  next
		  
		  super.Show()
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event dateSelected(theDate as Xojo.Core.Date)
	#tag EndHook


	#tag Property, Flags = &h21
		Private mDate As Date
	#tag EndProperty


#tag EndWindowCode

#tag Events PopupMenu1
	#tag Event
		Sub SelectionChanged(item as WebMenuItem)
		  dim d as new date()
		  dim theUbound,temp as integer
		  
		  if me.SelectedRowIndex <> -1 then 
		    //Set stored month
		    temp = val(me.RowTagat(me.SelectedRowIndex))
		    self.mDate.Month = temp
		    
		    
		    //Get total num days in month
		    select case me.SelectedRowValue
		    case "November", "September", "June", "April"
		      theUbound = 30
		      
		    case "February"
		      if d.Year mod 4 = 0 then
		        if d.Year mod 100 = 0 then 
		          if d.year mod 400 = 0 then
		            theUbound = 29
		            
		          else
		            theUbound = 28
		            
		          end if
		          
		        else
		          theUbound = 29
		          
		        end if
		        
		      else
		        theUbound = 28
		        
		      end if 
		      
		    else
		      theUbound = 31
		      
		    end Select
		    
		    //Populate days of month 
		    self.PopupMenu2.RemoveAllRows
		    d.Month = me.RowTagat(me.selectedrowindex)
		    for ii as integer = 1 to theUBound
		      d.day = ii
		      self.PopupMenu2.AddRow(datetodayofweek(d) + " - " + str(ii))
		      self.PopupMenu2.RowTagat(ii - 1) = str(ii)
		      
		    next
		    
		  end if 
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu2
	#tag Event
		Sub SelectionChanged(item as WebMenuItem)
		  if me.selectedrowindex <> -1 then 
		    dim temp as Integer
		    
		    //Update stored day
		    temp = val(me.RowTagat(me.selectedrowindex))
		    self.mDate.Day = temp
		    
		  end if 
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu3
	#tag Event
		Sub SelectionChanged(item as WebMenuItem)
		  dim temp as integer
		  
		  temp = val(me.selectedrowvalue)
		  if mdate = nil then
		    mdate = new date
		  else
		    self.mDate.Year = temp
		    self.mDate.Year = temp //XXX: THIS WAS ADDED BC 1ST CALL WAS NOT SETTING DATE, STRANGE XOJO BUG
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label1
	#tag Event
		Sub Pressed()
		  self.Close()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label2
	#tag Event
		Sub Pressed()
		  if xojo.core.date.now().compareTo(mDate.toCoreDate()) = 1 then
		    MessageBox "Return date can not be in the past"
		    return
		  else 'Check to see if this is a post 2pm same day return declaration
		    if mdate.hour >= 14 then
		      if mdate.year = todaysdate.year AND mdate.month = todaysdate.month AND mdate.day = todaysdate.day then 'send Rick a text
		        SendSMS("Post 2pm end date same as today specified through date drop down window.")
		      end if
		    end if
		  end if
		  
		  RaiseEvent dateSelected(mDate.toCoreDate())
		  self.Close()
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
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=false
		Group="ID"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=false
		Group="Position"
		InitialValue=""
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
		Name="Top"
		Visible=false
		Group="Position"
		InitialValue=""
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
		Group="Behavior"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
