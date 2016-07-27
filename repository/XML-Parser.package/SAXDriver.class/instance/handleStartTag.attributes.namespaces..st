handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	"performance critical method"
	| prefix namespaceUri currentScope |

	self elementNester startElement: anElementName.

	prefix := anElementName qualifiedNamePrefix.
	self usesNamespaces
		ifTrue: [
			currentScope := self scopeAllocator enterScope.
			aNamespaceDictionary
				ifNotNil: [self declareNamespaces: aNamespaceDictionary inScope: currentScope].
			namespaceUri :=
				currentScope
					validateAndResolvePrefix: prefix
					ofName: anElementName.
			anAttributeDictionary isEmpty "avoid ifNotEmpty: closure overhead"
				ifFalse: [currentScope validateAttributePrefixes: anAttributeDictionary]].
	self isValidating
		ifTrue: [self validateStartTag: anElementName attributes: anAttributeDictionary].

	self saxHandler
		startElement: anElementName
		prefix: prefix
		uri: (namespaceUri ifNil: [''])
		localName: (anElementName qualifiedNameLocalPart: prefix)
		attributes: anAttributeDictionary.
	currentScope
		ifNotNil: [self saxHandler currentScope: currentScope].