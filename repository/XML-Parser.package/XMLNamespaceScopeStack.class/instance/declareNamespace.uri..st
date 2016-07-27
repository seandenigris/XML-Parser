scope
declareNamespace: aNamespace uri: aUri
	"Declare the given name space prefix with the given URL"

	self currentScope bindNamespace: aNamespace to: aUri