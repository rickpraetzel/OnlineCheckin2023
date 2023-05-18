#tag Class
Protected Class ShuttleReservation
	#tag Method, Flags = &h0
		Sub constructor()
		  calEventSerial = new SQLSerial()
		  serial = new SQLSerial()
		  reservationSerial = new SQLSerial()
		  returnShuttleSerial = new SQLSerial()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSeatString() As string
		  return Join(seats, "|")
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		calEventSerial As SQLSerial
	#tag EndProperty

	#tag Property, Flags = &h0
		dropOffLocation As string
	#tag EndProperty

	#tag Property, Flags = &h0
		isPresent As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		pickUpLocation As String
	#tag EndProperty

	#tag Property, Flags = &h0
		reservationSerial As SQLSerial
	#tag EndProperty

	#tag Property, Flags = &h0
		returnShuttleSerial As SQLSerial
	#tag EndProperty

	#tag Property, Flags = &h0
		seats() As string
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
			Name="dropOffLocation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pickUpLocation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isPresent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
