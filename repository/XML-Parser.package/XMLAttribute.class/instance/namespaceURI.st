accessing
namespaceURI
	^ self element
		ifNil: ['']
		ifNotNil: [self element resolvePrefix: self prefix]