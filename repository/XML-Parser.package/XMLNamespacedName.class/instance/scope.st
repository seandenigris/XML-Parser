accessing
scope
	^ scope ifNil: [scope := XMLNamespaceScope new]