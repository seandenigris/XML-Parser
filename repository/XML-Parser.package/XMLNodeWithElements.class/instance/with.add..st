private
with: aBlock add: aNode
	"This is an execute-around method that takes a block purporting to add aNode
	to #nodes. It evaluates the block, establishes a parent-child relationship,
	and if the node is an XMLElement, adds it to the element cache or rebuilds
	the cache if needed.
	
	Methods adding anything to #nodes should be implemented around this
	message."

	(super with: aBlock add: aNode) ifNil: [^ nil].

	aNode isTag ifTrue: [
		(self nodes last = aNode)
			ifTrue: [self elementCacheAdd: aNode]
			ifFalse: [self rebuildElementCache]].
	^ aNode.