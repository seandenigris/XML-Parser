private
with: aBlock remove: aNode
	(super with: aBlock remove: aNode) ifNil: [^ nil].
	self attributesByName removeKey: aNode name.
	^ aNode.