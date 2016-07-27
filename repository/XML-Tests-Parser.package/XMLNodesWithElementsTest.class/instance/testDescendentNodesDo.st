tests
testDescendentNodesDo
	| nodeWithElements descendentNodes |

	nodeWithElements := self newNodesWithElements.
	descendentNodes := nodeWithElements descendentNodes.
	self
		should: [:block | nodeWithElements descendentNodesDo: block]
		enumerate: descendentNodes.

	descendentNodes do: [:node |
		node isElement
			ifTrue: [
				self
					should: [:block | node descendentNodesDo: block]
					enumerate: node descendentNodes]].