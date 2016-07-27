tests
testDescendentNodesDo
	| nodeWithNodes descendentNodes |

	nodeWithNodes := self newNodeWithNodes.
	descendentNodes := nodeWithNodes descendentNodes.
	self
		should: [:block | nodeWithNodes descendentNodesDo: block]
		enumerate: descendentNodes.

	descendentNodes do: [:node |
		node canHaveChildren
			ifTrue: [
				self
					should: [:block | node descendentNodesDo: block]
					enumerate: node descendentNodes]].