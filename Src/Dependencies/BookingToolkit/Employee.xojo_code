#tag Class
Protected Class Employee
	#tag Method, Flags = &h0
		Sub constructor()
		  height = new HumanHeight()
		  name = new DisplayName()
		  phone = new PhoneNumber()
		  serial = new SQLSerial()
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		email1 As string
	#tag EndProperty

	#tag Property, Flags = &h0
		email2 As string
	#tag EndProperty

	#tag Property, Flags = &h0
		forceReset As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		height As HumanHeight
	#tag EndProperty

	#tag Property, Flags = &h0
		isActive As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		login As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		name As BookingToolkit.DisplayName
	#tag EndProperty

	#tag Property, Flags = &h0
		passwordHash As string
	#tag EndProperty

	#tag Property, Flags = &h0
		phone As PhoneNumber
	#tag EndProperty

	#tag Property, Flags = &h0
		serial As SQLSerial
	#tag EndProperty

	#tag Property, Flags = &h0
		username As string
	#tag EndProperty

	#tag Property, Flags = &h0
		weight As integer
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
			Name="weight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="email1"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="passwordHash"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="forceReset"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="email2"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="username"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isActive"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="login"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
