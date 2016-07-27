accessing
bindNamespace: aNamespace to: aUri
	((aNamespace = 'xmlns') or: [aNamespace isEmptyOrNil])
		ifTrue: [self defaultNamespace: aUri]
		ifFalse: [self currentBindings at: aNamespace put: aUri]