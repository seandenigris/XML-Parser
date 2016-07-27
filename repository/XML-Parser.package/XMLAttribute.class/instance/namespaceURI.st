accessing
namespaceURI
	self hasParent ifFalse: [^ ''].

	^ self parent resolvePrefix: self prefix.