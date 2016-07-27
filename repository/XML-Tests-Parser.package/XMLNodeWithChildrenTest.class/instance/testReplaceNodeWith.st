tests
testReplaceNodeWith
	| nodeWithNodes replacements |

	nodeWithNodes := self newNodeWithNodes.
	replacements := OrderedCollection new.
	nodeWithNodes nodes copy do: [:each |
		self assert:
			(nodeWithNodes
				replaceNode: each
				with: (replacements add: self nodeClass new)) == replacements last].
	self assert: nodeWithNodes nodes asOrderedCollection = replacements.