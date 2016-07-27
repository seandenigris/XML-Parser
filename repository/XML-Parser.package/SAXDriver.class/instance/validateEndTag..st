validation
validateEndTag: anEndTag
	self usesNamespaces
		ifTrue: [
			self undeclareNamespaces.
			self scopeAllocator exitScope].
	self isValidating
		ifTrue: [self validator validateEndTag: anEndTag].