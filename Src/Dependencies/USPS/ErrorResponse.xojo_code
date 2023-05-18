#tag Class
Protected Class ErrorResponse
	#tag Method, Flags = &h0
		Sub constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub constructor(xml as XmlDocument)
		  errorNumber = xml.FirstChild.FirstChild.FirstChild.FirstChild.FirstChild.Value
		  source = xml.FirstChild.FirstChild.FirstChild.FirstChild.NextSibling.FirstChild.Value
		  reason = xml.FirstChild.FirstChild.FirstChild.FirstChild.NextSibling.NextSibling.FirstChild.Value
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		errorNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		reason As string
	#tag EndProperty

	#tag Property, Flags = &h0
		source As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="errorNumber"
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
			Name="reason"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="source"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
	#tag EndViewBehavior
End Class
#tag EndClass
