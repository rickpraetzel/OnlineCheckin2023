#tag Class
Protected Class PaymentSource
	#tag Method, Flags = &h1
		Protected Sub constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBillingInfo() As BillingProfile
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getJson() As JSONItem
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getValidationMode() As String
		  return validationMode
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mTokenName
			  
			End Get
		#tag EndGetter
		JSONTokenName As string
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected mTokenName As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected validationMode As string
	#tag EndProperty


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
			Name="JSONTokenName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
End Class
#tag EndClass
