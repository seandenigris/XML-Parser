scope
declareNamespace: aPrefix uri: aUri
	"Declare the given name space prefix with the given URL"

	self currentScope mapPrefix: aPrefix to: aUri