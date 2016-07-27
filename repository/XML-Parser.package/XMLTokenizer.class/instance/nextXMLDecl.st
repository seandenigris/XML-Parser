tokenizing
nextXMLDecl
	| version encoding standalone |

	version := self nextXMLDeclAttribute: 'version'.
	streamReader skipSeparators.
	encoding := 
		streamReader peek == $e
			ifTrue: [self nextXMLDeclAttribute: 'encoding']
			ifFalse: [''].
	context isInTextDeclaration
		ifFalse: [standalone := self nextXMLDeclAttribute: 'standalone'].

	streamReader skipSeparators.
	self expectNext: $?.
	self expectTerminator: $>.

	encoding
		ifNotEmpty: [streamReader useConverterForEncoding: encoding].

	context isInTextDeclaration
		ifTrue: [
			context isInExternalSubsetTextDeclaration
				ifTrue: [context enterExternalSubset]]
		ifFalse: [
			driver
				handleXMLVersion: version
				encoding: encoding
				standalone: standalone].