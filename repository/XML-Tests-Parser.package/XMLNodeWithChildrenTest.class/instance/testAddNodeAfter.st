tests
testAddNodeAfter
	| nodeWithNodes added |

	nodeWithNodes := self newNodeWithNodes.
	added := OrderedCollection new.
	nodeWithNodes nodes copy do: [:each |
		added
			add: each;
			add: self nodeClass new.
		self
			assert: (nodeWithNodes addNode: added last after: each) == added last;
			assert: (nodeWithNodes nodeAfter: each) == added last.
		self
			should: [nodeWithNodes addNode: each after: each]
			raise: XMLDOMException].
	nodeWithNodes nodes asOrderedCollection = added.
