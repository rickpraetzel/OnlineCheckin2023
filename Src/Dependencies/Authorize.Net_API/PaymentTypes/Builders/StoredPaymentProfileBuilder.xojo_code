#tag Class
Protected Class StoredPaymentProfileBuilder
	#tag Method, Flags = &h0
		Function build() As StoredPaymentProfile
		  return new StoredPaymentProfile(self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub constructor()
		  validationMode = kValidationTest
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function setCardOnFile(cardOnFile as CreditCard) As StoredPaymentProfileBuilder
		  self.cardOnFile = cardOnFile
		  return self 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function setCustomerSerial(customerSerial as String) As StoredPaymentProfileBuilder
		  self.customerSerial = customerSerial
		  return self 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function setPaymentProfileSerial(paymentProfileSerial as String) As StoredPaymentProfileBuilder
		  self.paymentProfileSerial = paymentProfileSerial
		  return self 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function setValidationMode(validationMode as String) As StoredPaymentProfileBuilder
		  self.validationMode = validationMode
		  return self 
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		cardOnFile As CreditCard
	#tag EndProperty

	#tag Property, Flags = &h0
		customerSerial As string
	#tag EndProperty

	#tag Property, Flags = &h0
		paymentProfileSerial As string
	#tag EndProperty

	#tag Property, Flags = &h0
		validationMode As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="customerSerial"
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
			Name="paymentProfileSerial"
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
		#tag ViewProperty
			Name="validationMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
