private
localName: aString prefix: aPrefix attributes: anAttributeDictionary scope: aNamespaceScope
	| element attributeNodes |

	element := self new.
	element setScope: aNamespaceScope.
	element nodeName setPrefix: aPrefix localName: aString.
	attributeNodes := XMLAttributeList new.
	anAttributeDictionary keysAndValuesDo: [:key :value |
		attributeNodes addLast: (XMLAttribute name: key value: value)].
	element setAttributeNodes: attributeNodes.

	^ element.