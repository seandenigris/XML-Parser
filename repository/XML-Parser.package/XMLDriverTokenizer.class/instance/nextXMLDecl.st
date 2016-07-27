tokenizing
nextXMLDecl
	| version encoding standalone isTextDeclaration |

	isTextDeclaration  := context isInTextDeclaration.
	version := self nextXMLDeclAttribute: 'version' isOptional: isTextDeclaration.
	(encoding := self nextXMLDeclAttribute: 'encoding' isOptional: isTextDeclaration not)
		ifNotEmpty: [streamReader useConverterForEncoding: encoding].
	standalone := self nextXMLDeclAttribute: 'standalone' isOptional: true.

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