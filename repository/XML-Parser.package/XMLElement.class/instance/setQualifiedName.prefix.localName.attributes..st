initialization
setQualifiedName: aQualifiedName prefix: aPrefix localName: aLocalName attributes: anAttributeDictionary
	name := XMLNodeName qualified: aQualifiedName localPart: aLocalName.

	anAttributeDictionary isEmpty "avoid ifNotEmpty: closure overhead"
		ifFalse: [
			"The setFrom method is used to avoid revalidating the
			attributes when adding them to the list"
			(attributes :=
				(XMLAttributeList new: anAttributeDictionary size)
					observer: self)
				setFromDictionary: anAttributeDictionary].