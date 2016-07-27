tokenizing
nextXMLDecl
	| version encoding standalone |

	version := self nextXMLDeclAttribute: 'version'.
	encoding := self nextXMLDeclAttribute: 'encoding'.
	context isInTextDeclaration
		ifFalse: [standalone := self nextXMLDeclAttribute: 'standalone'].
	streamReader skipSeparators.
	self expectNextAll: '?>'.

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