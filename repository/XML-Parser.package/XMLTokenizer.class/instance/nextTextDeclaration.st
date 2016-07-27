tokenizing
nextTextDeclaration
	"skip <"
	streamReader
		skipSeparators;
		next.

	context resetAfter: [
		context enterTextDeclaration.
		self nextPIOrXMLDecl].