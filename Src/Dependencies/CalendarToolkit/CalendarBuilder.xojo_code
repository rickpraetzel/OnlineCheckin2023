#tag Class
Private Class CalendarBuilder
	#tag Method, Flags = &h0
		Function autoContructsTitles(value as boolean) As CalendarToolkit.CalendarBuilder
		  self.autoContructTitle = value
		  return self 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function build() As CalendarToolkit.Calendar
		  return new CalendarToolkit.Calendar(self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function calendar() As CalendarToolkit.CalendarBuilder
		  return new CalendarToolkit.CalendarBuilder()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub constructor()
		  serial = new SQLSerial()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getsLocationAudit(value as boolean) As CalendarToolkit.CalendarBuilder
		  getsLocationAudit = value
		  return self
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isAcceptsReservations(value as boolean) As CalendarToolkit.CalendarBuilder
		  acceptsReservations = value
		  return self
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isActive(value as boolean) As CalendarToolkit.CalendarBuilder
		  mIsActive = value
		  return self
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isBreadthIncentive(value as boolean) As CalendarToolkit.CalendarBuilder
		  self.isQualifiedForBreadth = value
		  return self
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function usesRank(value as boolean) As CalendarToolkit.CalendarBuilder
		  useRank = value
		  return self
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function withFillColor(cc as color) As CalendarToolkit.CalendarBuilder
		  fillColor = cc
		  return self
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function withName(name as string) As CalendarToolkit.CalendarBuilder
		  self.name = name
		  return self 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function withParticipantCountMode(mode as string) As CalendarToolkit.CalendarBuilder
		  self.participantCountMode = CalendarToolkit.mapCountMode(mode)
		  return self
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function withSerial(ss as SQLSerial) As CalendarToolkit.CalendarBuilder
		  serial = ss
		  return self 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function withViewOrder(viewOrder as integer) As CalendarToolkit.CalendarBuilder
		  self.viewOrder = viewOrder
		  return self 
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		acceptsReservations As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		autoContructTitle As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		fillColor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		getsLocationAudit As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		isQualifiedForBreadth As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		mIsActive As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		participantCountMode As CalendarToolkit.CountModes
	#tag EndProperty

	#tag Property, Flags = &h0
		serial As sqlSerial
	#tag EndProperty

	#tag Property, Flags = &h0
		useRank As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		viewOrder As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
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
			Name="acceptsReservations"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="fillColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="useRank"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="viewOrder"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="getsLocationAudit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="isQualifiedForBreadth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="autoContructTitle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mIsActive"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="participantCountMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CalendarToolkit.CountModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - NONE"
				"1 - SUM"
				"2 - SEPARATE"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
