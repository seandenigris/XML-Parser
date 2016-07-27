accessing
resolvePrefix: aPrefix
	^ self currentScope resolvePrefix: aPrefix ifUnmapped: ['']