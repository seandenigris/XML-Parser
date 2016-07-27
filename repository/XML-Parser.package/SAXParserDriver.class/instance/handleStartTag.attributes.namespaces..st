handling
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	"performance critical method"
	| prefix totalAttributes namespaceURI currentScope |

	self elementNester startElement: anElementName.

	prefix := anElementName prefixBeforeLocalName.
	totalAttributes := anAttributeDictionary size.
	self usesNamespaces
		ifTrue: [
			currentScope := self scopeAllocator enterScope.
			aNamespaceDictionary
				ifNotNil: [
					self
						declareNamespaces: aNamespaceDictionary
						inScope: currentScope].
			namespaceURI :=
				currentScope
					validateAndResolvePrefix: prefix
					ofElement: anElementName.
			totalAttributes > 0
				ifTrue: [currentScope validateAttributePrefixes: anAttributeDictionary]].
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
		ifTrue: [self handleReservedAttributes: anAttributeDictionary].

	self saxHandler
		startElement: anElementName
		prefix: prefix
		uri: (namespaceURI ifNil: [''])
		localName: (anElementName localNameAfterPrefix: prefix)
		attributes: anAttributeDictionary.

	currentScope
		ifNotNil: [self saxHandler currentScope: currentScope].