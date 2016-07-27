tokenizing
nextXMLTextDeclaration
	(streamReader nextMatchAll: '<?xml')
		ifTrue: [
			self nextXMLVersionAttributeRequired: false.
			(self nextXMLEncodingAttributeRequired: true)
				ifNotEmpty: [:encoding | streamReader convertFromEncoding: encoding].

			streamReader skipSeparators.
			self
				expectNext: $?;
				expectTerminator].
	context := context previousContext.