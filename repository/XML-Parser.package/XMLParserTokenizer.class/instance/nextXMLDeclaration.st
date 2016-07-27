tokenizing
nextXMLDeclaration
	| version encoding |

	self expectSeparators.
	version := self nextXMLVersionAttributeRequired: true.
	streamReader peek == $?
		ifFalse: [self expectSeparators].
	(encoding := self nextXMLEncodingAttributeRequired: false) isEmpty
		ifFalse: [
			streamReader convertFromEncoding: encoding.
			streamReader peek == $?
				ifFalse: [self expectSeparators]].
	
	driver
		handleXMLVersion: version
		encoding: encoding
		standalone: self nextXMLStandaloneAttribute.
	context := context prologContext.

	streamReader skipSeparators.
	self
		expectNext: $?;
		expectTerminator.