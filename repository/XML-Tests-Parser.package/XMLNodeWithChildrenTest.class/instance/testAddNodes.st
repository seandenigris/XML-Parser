tests
testAddNodes
	| node nodeWithNodes added |

	node := self nodeClass new.
	nodeWithNodes := self newNodeWithNodes.
	added := OrderedCollection new.
	1 to: 10 do: [:i | | nodes |
		nodes := (1 to: i) collect: [:each | self nodeClass new].
		added addAll: nodes.

		self assert: (node addNodes: nodes) == nodes.
		nodes do: [:each |
			self assert: (node includesNode: each).
			self
				should: [nodeWithNodes addNode: each]
				raise: XMLDOMException]].

	node nodes asOrderedCollection = added.
