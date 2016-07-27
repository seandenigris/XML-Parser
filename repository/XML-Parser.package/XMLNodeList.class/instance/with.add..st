private
with: aBlock add: aNode
	aNode hasParent ifTrue: [^ self errorNodeWithParent].
	self
		with: [aBlock value]
		onError: [^ nil].
	self parent ifNotNil: [self parent nodeAdded: aNode].

	^ aNode.