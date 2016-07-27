tests
testNodeAtPut
	| nodeWithNodes newNodeClass |

	nodeWithNodes := self newNodeWithNodes.
	newNodeClass := nodeWithNodes firstNode class.
	self
		should: [nodeWithNodes nodeAt: 0 put: newNodeClass new]
		raise: Error.
	1 to: nodeWithNodes nodes size do: [:i | | newNode |
		newNode := newNodeClass new.
		self assert: (nodeWithNodes nodeAt: i put: newNode) == newNode].

	self supportsAtPutOnePastEnd
		ifTrue: [
			self
				shouldnt: [
					nodeWithNodes
						nodeAt: nodeWithNodes nodes size + 1
						put: newNodeClass new]
				raise: Error]
		ifFalse: [
			self
				should: [
					nodeWithNodes
						nodeAt: nodeWithNodes nodes size + 1
						put: newNodeClass new]
				raise: Error].