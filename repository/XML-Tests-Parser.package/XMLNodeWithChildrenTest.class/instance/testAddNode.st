tests
testAddNode
	| node nodeWithNodes added |

	node := self nodeClass new.
	nodeWithNodes := self newNodeWithNodes.
	added := OrderedCollection new.
	10 timesRepeat: [
		added add: self nodeClass new.
		self
			assert: (node addNode: added last) == added last;
			assert: (node lastNode) == added last.
		self
			should: [nodeWithNodes addNode: added last]
			raise: XMLDOMException].
	node nodes asOrderedCollection = added.
