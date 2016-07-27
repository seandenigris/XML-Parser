private
with: aBlock add: aNode

	aNode hasParent ifTrue: [^ self errorNodeWithParent].

	self with: aBlock onError: [^ nil].
	self parent ifNotNil: [
		aNode parent: self parent.
		self parent addedNode: aNode toList: self].
	^ aNode.