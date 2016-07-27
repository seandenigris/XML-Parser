handling
handleStartTag: anElementName attributes: anAttributeDictionary
	"performance critical method"
	| prefix totalAttributes namespaceURI currentScope |

	self elementNester startElement: anElementName.

	prefix := anElementName xmlPrefixBeforeLocalName.
	totalAttributes := anAttributeDictionary size.
	self isValidating
		ifTrue: [
			self elementNester isCurrentElementRoot
				ifTrue: [self validateRootElement: anElementName].
			self validator
				validateStartTag: anElementName
				attributes: anAttributeDictionary.
			anAttributeDictionary size > totalAttributes
				ifTrue: [
					self
						checkForReservedAttributesIn: anAttributeDictionary
						afterIndex: totalAttributes]].
	self usesNamespaces
		ifTrue: [
			currentScope := self scopeAllocator enterScope.
			self hasUnhandledReservedAttributes
				ifTrue: [
					(self extractNamespacesFromAttributes: anAttributeDictionary)
						ifNotNil: [:namespaces |
							self
								declareNamespaces: namespaces
								inScope: currentScope]].
			namespaceURI :=
				currentScope
					validateAndResolvePrefix: prefix
					ofElement: anElementName.
			totalAttributes > 0
				ifTrue: [currentScope validateAttributePrefixes: anAttributeDictionary]].
	self hasUnhandledReservedAttributes
		ifTrue: [self handleReservedAttributes: anAttributeDictionary].

	self saxHandler
		startElement: anElementName
		prefix: prefix
		uri: (namespaceURI ifNil: [''])
		localName: (anElementName xmlLocalNameAfterPrefix: prefix)
		attributes: anAttributeDictionary.

	currentScope
		ifNotNil: [self saxHandler currentScope: currentScope].