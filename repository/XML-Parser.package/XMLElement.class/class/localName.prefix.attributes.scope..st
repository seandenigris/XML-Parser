private
localName: aString prefix: aPrefix attributes: attributeList scope: namespaceScope
	| element |
	element := self new.
	element setScope: namespaceScope.
	element namespacedName setPrefix: aPrefix localName: aString.
	attributeList keysAndValuesDo: [:key :value |
		element attributeNodes addName: key value: value].
	^ element.