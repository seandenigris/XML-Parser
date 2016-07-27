enumerating
ancestorNodesDo: aBlock
	self parent
		ifNotNil: [:node |
			aBlock value: node.
			node ancestorNodesDo: aBlock]