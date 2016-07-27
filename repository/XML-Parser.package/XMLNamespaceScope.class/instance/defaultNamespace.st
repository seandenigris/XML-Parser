accessing
defaultNamespace
	"Rather than lazily initializing this to an empty string, we leave it as nil, so we can
	distinguish between no default namespace being set and an empty default namespace
	intended to override a non-empty declaration in a parent."

	^ defaultNamespace ifNil: ['']