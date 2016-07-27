tokenizing
nextPIOrXMLDeclaration
	| piTarget piData |

	"Skip ?"
	streamReader next.
	piTarget := self nextPITarget.
	(piTarget = 'xml'
		and: [context isPrologContext])
		ifTrue: [^ self nextXMLDeclaration].
	streamReader skipSeparators.
	piData := self expectUpToAll: '?>'.

	driver handlePI: piTarget data: piData.