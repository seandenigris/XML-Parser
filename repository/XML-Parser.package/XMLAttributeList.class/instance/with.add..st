private
with: aBlock add: aNode
	aNode isAttribute
		ifFalse: [^ self errorNonAttributeNode].

	(super with: aBlock add: aNode) ifNil: [^ nil].

	self attributesByName
		at: aNode name
		ifPresent: [self removeNodeNamed: aNode name].
	self attributesByName at: aNode name put: aNode.
	^ aNode.