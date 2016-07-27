private
setQualifiedName: aQualifiedName localName: aLocalName attributes: anAttributeDictionary
	name := aQualifiedName.
	localName := aLocalName.
	anAttributeDictionary size > 0 "optimization"
		ifTrue: [
			"setWithOrderPreservingDictionary: is used to initialize the attribute
			node list with anAttributeDictionary without revalidation"
			(attributes := self attributeListClass new: anAttributeDictionary size)
				observer: self;
				setWithOrderPreservingDictionary: anAttributeDictionary].