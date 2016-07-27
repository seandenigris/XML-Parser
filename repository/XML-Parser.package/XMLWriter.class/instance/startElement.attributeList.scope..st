writing xml
startElement: elementName attributeList: attributeList scope: namespaceScope
	self startTag: elementName.
	self scoping enterScope.

	namespaceScope bindingsDo: [:namespace :uri |
		(self scoping isNamespace: namespace boundTo: uri)
			ifFalse: [self xmlns: namespace uri: uri]].

	(namespaceScope defaultNamespace ~= self scoping defaultNamespace)
		ifTrue: [self xmlns: nil uri: namespaceScope defaultNamespace].

	attributeList keys asSortedCollection do: [:key |
		self attribute: key value: (attributeList at: key)]