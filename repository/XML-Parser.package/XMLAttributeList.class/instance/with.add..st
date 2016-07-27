private
with: aBlock add: aNode
	aNode isAttribute ifFalse: [^ self errorNonAttributeNode].

	(super with: aBlock add: aNode) ifNil: [^ nil].

	self nodesByName
		at: aNode name
		ifPresent: [self removeNodeNamed: aNode name].
	self nodesByName at: aNode name put: aNode.
	^ aNode.