private
with: aBlock remove: aNode
	(super with: aBlock remove: aNode) ifNil: [^ nil].
	self nodesByName removeKey: aNode name.
	^ aNode.