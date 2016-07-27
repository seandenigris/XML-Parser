private
with: aBlock remove: aNode
	"This is an execute-around method that takes a block purporting to remove
	aNode from #nodes, evaluates it, breaks the parent-child relationship.
	
	Methods that remove anything from #nodes should be implemented around this
	message."

	self with: aBlock onError: [^ nil].
	aNode parent: nil.
	^ aNode.