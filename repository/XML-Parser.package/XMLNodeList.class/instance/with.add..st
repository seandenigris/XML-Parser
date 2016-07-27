private
with: aBlock add: aNode

	aNode hasParent
		ifTrue: [self error: 'attempt to add node with parent'. ^ nil].

	self with: aBlock onError: [^ nil].
	self parent ifNotNil: [
		aNode parent: self parent.
		self parent addedNode: aNode toList: self].
	^ aNode.