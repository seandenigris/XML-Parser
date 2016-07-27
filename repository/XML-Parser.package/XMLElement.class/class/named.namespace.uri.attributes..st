instance creation
named: aLocalName namespace: aPrefix uri: aUri attributes: aDictionary
	self deprecated: 'use #name:namespaceURI:attributes: with a qualified name instead'.

	^ self
		name: aPrefix, ':', aLocalName
		namespaceURI: aUri
		attributes: aDictionary.