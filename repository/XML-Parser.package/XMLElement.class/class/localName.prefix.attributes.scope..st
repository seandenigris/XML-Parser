private
localName: aString prefix: ns attributes: attributeList scope: namespaceScope
	| element |
	element := self new
		setScope: namespaceScope;
		setPrefix: ns localName: aString.
	attributeList keysAndValuesDo: [:key :value |
		element attributeList addName: key value: value scope: namespaceScope].
	^ element.