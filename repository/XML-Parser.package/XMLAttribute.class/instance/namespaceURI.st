accessing
namespaceURI
	^ self hasParent ifTrue: [self parent resolvePrefix: self prefix]