private
qualifiedName: aQualifiedName prefix: aPrefix localName: aLocalName attributes: anAttributeDictionary
	| element attributeNodes |

	element := self new.
	element nodeName
		setQualifiedName: aQualifiedName
		prefix: aPrefix
		localName: aLocalName.
	attributeNodes := XMLAttributeList new.
	anAttributeDictionary keysAndValuesDo: [:key :value |
		attributeNodes addLast: (XMLAttribute name: key value: value)].
	element setAttributeNodes: attributeNodes.
	^ element.