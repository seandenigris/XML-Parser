enumerating
ancestorElementsDo: aBlock
	self parent
		ifNotNil: [:node |
			node isElement
				ifTrue: [aBlock value: node].
			node ancestorElementsDo: aBlock]