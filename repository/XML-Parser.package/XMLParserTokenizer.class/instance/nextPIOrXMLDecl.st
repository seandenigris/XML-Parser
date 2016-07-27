tokenizing
nextPIOrXMLDecl
	| piTarget piData |

	"Skip ?"
	streamReader next.
	(piTarget := self nextPITarget) = 'xml'
		ifTrue: [^ self nextXMLDecl]
		ifFalse: [
			context isInExternalSubsetTextDeclaration
				ifTrue: [context enterExternalSubset]].

	streamReader skipSeparators.
	piData := self expectUpToAll: '?>'.

	driver handlePI: piTarget data: piData.