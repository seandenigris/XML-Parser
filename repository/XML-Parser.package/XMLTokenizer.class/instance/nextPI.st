tokenizing
nextPI
	| piTarget piData |
	"Skip ?"
	streamReader next.
	piTarget := self nextLiteral.
	piTarget asUppercase = 'XML'
		ifTrue: [^ self nextXMLDecl].
	streamReader skipSeparators.
	piData := streamReader nextUpToAll: '?>'.
	self handlePI: piTarget data: piData.