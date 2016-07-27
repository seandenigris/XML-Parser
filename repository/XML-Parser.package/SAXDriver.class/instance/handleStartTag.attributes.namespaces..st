handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	"performance critical method"
	| prefix namespaceUri |

	self elementNester startElement: anElementName.

	prefix := anElementName qualifiedNamePrefix.
	self usesNamespaces
		ifTrue: [
			self scopeAllocator enterScope.
			aNamespaceDictionary
				ifNotNil: [self declareNamespaces: aNamespaceDictionary].
			namespaceUri :=
				self scopeAllocator
					validateAndResolvePrefix: prefix
					ofName: anElementName.
			anAttributeDictionary isEmpty
				ifFalse: [self scopeAllocator validateAttributePrefixes: anAttributeDictionary]].
	self isValidating
		ifTrue: [self validateStartTag: anElementName attributes: anAttributeDictionary].

	self saxHandler
		startElement: anElementName
		prefix: prefix
		uri: (namespaceUri ifNil: [''])
		localName: (anElementName qualifiedNameLocalPart: prefix)
		attributes: anAttributeDictionary.
	self usesNamespaces
		ifTrue: [self saxHandler currentScope: self scopeAllocator currentScope].