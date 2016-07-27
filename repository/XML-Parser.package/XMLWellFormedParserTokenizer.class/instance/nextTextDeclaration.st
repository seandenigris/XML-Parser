tokenizing
nextTextDeclaration
	"skip <"
	streamReader
		skipSeparators;
		next.

	context
		saveCurrent;
		enterTextDeclaration.
	self nextPIOrXMLDecl.
	context resetPrevious.	