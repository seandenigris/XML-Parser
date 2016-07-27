tokenizing
nextXMLDeclaration
	| version encoding standalone |

	version := self nextXMLVersionAttributeRequired: true.
	(encoding := self nextXMLEncodingAttributeRequired: false)
		ifNotEmpty: [streamReader convertFromEncoding: encoding].
	standalone := self nextXMLStandaloneAttribute.

	streamReader skipSeparators.
	self
		expectNext: $?;
		expectTerminator: $>.

	driver
		handleXMLVersion: version
		encoding: encoding
		standalone: standalone.