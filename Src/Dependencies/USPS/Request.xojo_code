#tag Interface
Protected Interface Request
	#tag Method, Flags = &h0
		Function getAPIName() As Text
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getName() As Text
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getResponseParser() As USPS.Parser
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toXML(generator as XmlDocument) As XmlNode
		  
		End Function
	#tag EndMethod


	#tag ViewBehavior
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
End Interface
#tag EndInterface
