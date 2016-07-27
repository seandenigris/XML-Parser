handling
handleStartTag: anElementName attributes: anAttributeDictionary
	"performance critical method"
	| prefix totalAttributes namespaceURI currentScope namespaces |

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
	self hasUnhandledReservedAttributes
		ifTrue: [
			self handleReservedAttributes: anAttributeDictionary.
			self usesNamespaces
				ifTrue: [namespaces := self extractNamespacesFromAttributes: anAttributeDictionary]].
	self usesNamespaces
		ifTrue: [
			currentScope := self scopeAllocator enterScope.
			namespaces
				ifNotNil: [
					self
						declareNamespaces: namespaces
						inScope: currentScope].
			namespaceURI :=
				currentScope
					validateAndResolvePrefix: prefix
					ofElement: anElementName.
			totalAttributes > 0
				ifTrue: [currentScope validateAttributePrefixes: anAttributeDictionary]].

	self saxHandler
		startElement: anElementName
		prefix: prefix
		uri: (namespaceURI ifNil: [''])
		localName: (anElementName xmlLocalNameAfterPrefix: prefix)
		attributes: anAttributeDictionary.

	currentScope
		ifNotNil: [self saxHandler currentScope: currentScope].