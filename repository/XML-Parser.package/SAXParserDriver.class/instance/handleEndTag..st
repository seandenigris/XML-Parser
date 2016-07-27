handling tokens
handleEndTag: anElementName
	"performance critical method"
	| prefix currentScope |

	self elementNester hasScopedAttributes
		ifTrue: [
			self
				endNestingOfElement: anElementName
				withScopedAttributes: self elementNester currentScopedAttributes]
		ifFalse: [self elementNester endElement: anElementName].

	prefix := anElementName qualifiedNamePrefix.
	self saxHandler 
		endElement: anElementName
		prefix: prefix
		uri:
			(self usesNamespaces
				ifTrue: [
					currentScope := self scopeAllocator exitScope.
					currentScope resolvePrefix: prefix]
				ifFalse: [''])
		localName: (anElementName qualifiedNameLocalPartFromPrefix: prefix).

	currentScope ifNotNil: [
		currentScope hasNamespaces
			ifTrue: [self undeclareNamespacesInScope: currentScope]].
	self isValidating
		ifTrue: [self validator validateEndTag: anElementName].