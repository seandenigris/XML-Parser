tests
testAddNodeBefore
	| nodeWithNodes added |

	nodeWithNodes := self newNodeWithNodes.
	added := OrderedCollection new.
	nodeWithNodes nodes copy do: [:each | | node |
		added
			add: (node := self nodeClass new);
			add: each.
		self
			assert: (nodeWithNodes addNode: node before: each) == node;
			assert: (nodeWithNodes nodeBefore: each) == node.
		self
			should: [nodeWithNodes addNode: each before: each]
			raise: XMLDOMException].
	nodeWithNodes nodes asOrderedCollection = added.
