initialization
setQualifiedName: aQualifiedName localName: aLocalName attributes: anAttributeDictionary
	name := aQualifiedName.
	localName := aLocalName.
	anAttributeDictionary size > 0 "optimization"
		ifTrue: [
			"The setFrom method is used to avoid revalidating the
			attributes when adding them to the list"
			(attributes := self attributeListClass new: anAttributeDictionary size)
				observer: self;
				setFromDictionary: anAttributeDictionary].