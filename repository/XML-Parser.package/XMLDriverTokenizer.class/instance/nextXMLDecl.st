tokenizing
nextXMLDecl
	| version encoding standalone isTextDeclaration |

	isTextDeclaration  := context isInTextDeclaration.
	version := self nextXMLVersionAttributeRequired: isTextDeclaration not.
	(encoding := self nextXMLEncodingAttributeRequired: isTextDeclaration)
		ifNotEmpty: [streamReader useConverterForEncoding: encoding].
	isTextDeclaration
		ifFalse: [standalone := self nextXMLStandaloneAttribute].

	streamReader skipSeparators.
	self
		expectNext: $?;
		expectTerminator: $>.

	isTextDeclaration
		ifTrue: [
			context isInExternalSubsetTextDeclaration
				ifTrue: [context enterExternalSubset]]
		ifFalse: [
			driver
				handleXMLVersion: version
				encoding: encoding
				standalone: standalone].