tests
testAddNodeFirst
	| node nodeWithNodes added |

	node := self nodeClass new.
	nodeWithNodes := self newNodeWithNodes.
	added := OrderedCollection new.
	10 timesRepeat: [
		added addFirst: self nodeClass new.
		self
			assert: (node addNodeFirst: added first) == added first;
			assert: (node firstNode) == added first.
		self
			should: [nodeWithNodes addNodeFirst: added first]
			raise: XMLDOMException].
	node nodes asOrderedCollection = added.
