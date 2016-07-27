private
with: aBlock add: aNode
	"This is an execute-around method that takes a block purporting to add aNode
	to #nodes. It evaluates the block, establishes a parent-child relationship.
	
	Methods adding anything to #nodes should be implemented around this
	message."

	aNode hasParent
		ifTrue: [self error: 'attempt to add node with parent'. ^ nil].

	self with: aBlock onError: [^ nil].
	aNode parent: self.
	^ aNode.