private
with: aBlock remove: aNode

	self with: aBlock onError: [^ nil].
	aNode parent: nil.
	self parent ifNotNil: [self parent removedNode: aNode fromList: self].
	^ aNode.