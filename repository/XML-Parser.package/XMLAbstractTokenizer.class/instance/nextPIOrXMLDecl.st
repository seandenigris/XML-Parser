tokenizing
nextPIOrXMLDecl
	| piTarget piData |
	"Skip ?"
	streamReader next.
	piTarget := self nextName.
	((context isInProlog or: [context isInTextDeclaration])
		and: [piTarget asUppercase = 'XML'])
		ifTrue: [^ self nextXMLDecl]
		ifFalse: [
			context isInExternalSubsetTextDeclaration
				ifTrue: [context enterExternalSubset]].
	streamReader skipSeparators.
	piData := self expectUpToAll: '?>'.

	driver handlePI: piTarget data: piData.