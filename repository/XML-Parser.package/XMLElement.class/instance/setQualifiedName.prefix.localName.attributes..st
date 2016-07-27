initialization
setQualifiedName: aQualifiedName prefix: aPrefix localName: aLocalName attributes: anAttributeDictionary
	"This is used instead of using #nodeName's ifNil: initialization to avoid
	sending a name-changed notification"
	(name := XMLNodeName new)
		setQualified: aQualifiedName prefix: aPrefix localPart: aLocalName;
		addObserver: self.

	anAttributeDictionary isEmpty
		ifFalse: [
			"The setFrom method is used to avoid revalidating the
			attributes when adding them to the list"
			(attributes := XMLAttributeList new: anAttributeDictionary size)
				setFromDictionary: anAttributeDictionary andElement: self;
				addObserver: self].