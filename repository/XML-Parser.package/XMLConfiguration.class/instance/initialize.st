initialization
initialize
	super initialize.

	"always used, so explicitly initialized"
	isValidating := true.
	usesNamespaces := true.
	requiresDocumentConstraints := false.
	parserLimits := XMLParserLimits new.