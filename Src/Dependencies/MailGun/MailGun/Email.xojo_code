#tag Class
Protected Class Email
	#tag Method, Flags = &h0
		Sub addRecipient(recipient as MailGun.Identity)
		  recipients.Append(recipient.getFormattedAddress())
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getRecipientsString() As string
		  return Join(recipients, ",")
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		domain As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private recipients() As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sender As MailGun.Identity
	#tag EndProperty

	#tag Property, Flags = &h0
		subject As string
	#tag EndProperty

	#tag Property, Flags = &h0
		templateName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		variablesJSON As string
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
			Name="subject"
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
			Name="templateName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="variablesJSON"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="domain"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
