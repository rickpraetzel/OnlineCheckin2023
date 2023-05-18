#tag Class
Protected Class CreateCustomerProfileFromTransactionReq
Inherits AbstractProfileRequest
	#tag Method, Flags = &h0
		Sub constructor(txID as string)
		  super.constructor()
		  self.requestType = kTypeCreateProfileFromTx
		  requestHeaderKey = kCreateCustProfileFromTxHeader
		  self.txID = txID
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getJson() As JSONItem
		  //@return: JSONItem corresponding to this request type
		  
		  dim jsonBody as new JSONItem()
		  
		  jsonBody.Value("transID") = self.txID
		  
		  return jsonBody
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private txID As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="sentinalToken"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
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
