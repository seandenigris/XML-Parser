initialization
setQualifiedName: aQualifiedName prefix: aPrefix localName: aLocalName attributes: anAttributeDictionary namespaceScope: aNamespaceScope
	"This is used instead of using #nodeName's ifNil: initialization to avoid
	sending a name-changed notification"
	(name := XMLNodeName new)
		setQualified: aQualifiedName prefix: aPrefix localPart: aLocalName;
		addObserver: self.

	anAttributeDictionary
		ifNotEmpty: [
			"By not observing 'attributes' until after it is filled, we avoid
			re-validating the attributes, which the parser should have already done"
			(attributes := XMLAttributeList new: anAttributeDictionary size)
				setFromDictionary: anAttributeDictionary andElement: self;
				addObserver: self].

	namespaceScope := aNamespaceScope.