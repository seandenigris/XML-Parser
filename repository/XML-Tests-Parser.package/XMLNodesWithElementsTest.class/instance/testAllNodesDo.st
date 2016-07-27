tests
testAllNodesDo
	| nodeWithElements allNodes |

	nodeWithElements := self newNodesWithElements.
	allNodes := nodeWithElements allNodes.
	self
		should: [:block | nodeWithElements allNodesDo: block]
		enumerate: allNodes.

	allNodes do: [:node |
		node isElement
			ifTrue: [
				self
					should: [:block | node allNodesDo: block]
					enumerate: node allNodes]].