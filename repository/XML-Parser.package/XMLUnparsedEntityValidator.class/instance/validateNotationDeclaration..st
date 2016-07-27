validating
validateNotationDeclaration: aNotation
	"Unlike redundant entity declarations which are just ignored, redundant
	notation declarations are invalid"

	(self notations includes: aNotation)
		ifTrue: [self errorMultipleDeclarationsForNotation: aNotation]