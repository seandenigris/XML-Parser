copying
postCopy
	super postCopy.

	name := name copy.
	namespaceScope := namespaceScope copy.
	attributes
		ifNotNil: [attributes := attributes deepCopyWithObserver: self].