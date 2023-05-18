#tag Class
Protected Class Resource
	#tag Method, Flags = &h0
		Sub constructor()
		  resourceSerial = new SQLSerial()
		  calendarEventSerial = new SQLSerial()
		  serial = new SQLSerial
		  resourceType = BookingToolkit.resourceTypes.Staff
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		calendarEventSerial As SQLSerial
	#tag EndProperty

	#tag Property, Flags = &h0
		resourceSerial As SQLSerial
	#tag EndProperty

	#tag Property, Flags = &h0
		resourceType As BookingToolkit.resourceTypes
	#tag EndProperty

	#tag Property, Flags = &h0
		serial As SQLSerial
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
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
			Name="resourceType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="BookingToolkit.resourceTypes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Staff"
				"1 - Vehicle"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
