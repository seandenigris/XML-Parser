namespace
name: aLocalName namespace: aPrefix uri: aUri
	(aPrefix isEmptyOrNil or: [aPrefix = 'xmlns'])
		ifTrue: [
			aUri ifNotNil: [self defaultNamespace: aUri].
			namespace := nil]
		ifFalse: [
			aUri
				ifNotNil: [self bindNamespace: aPrefix to: aUri]
				ifNil: [
					(self namespaceScope isBoundNamespace: aPrefix)
						ifFalse: [self errorUnboundNamespace: aPrefix]].
			namespace := aPrefix].

	self name: aLocalName.