tests
testCopy
	| nodeWithNodes nodeWithNodesCopy unvisitedPairs visitedPairs copiedTypes |

	super testCopy.
	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodesCopy := nodeWithNodes copy.
	self
		assert: nodeWithNodes printString = nodeWithNodesCopy printString;
		assert: nodeWithNodes allNodes size = nodeWithNodesCopy allNodes size.

	unvisitedPairs := Set new.
	nodeWithNodes allNodes
		with: nodeWithNodesCopy allNodes
		do: [:node :nodeCopy | unvisitedPairs add: node -> nodeCopy].

	visitedPairs := Set new.
	copiedTypes :=
		#(OrderedCollection Dictionary
			XMLNode XMLNamespaceScope XMLOrderedList)
			collect: [:each | Smalltalk at: each].
	[unvisitedPairs isEmpty]
		whileFalse: [ | pair originalObject copyObject |
			pair := unvisitedPairs remove: unvisitedPairs anyOne.
			originalObject := pair key.
			copyObject := pair value.

			self deny: originalObject == copyObject.
			visitedPairs add: pair.
			1 to: originalObject class instSize do: [:i | | newPair |
				newPair := (originalObject instVarAt: i) -> (copyObject instVarAt: i).
				((visitedPairs includes: newPair)
					or: [copiedTypes noneSatisfy: [:each | newPair key isKindOf: each]])
					ifFalse: [unvisitedPairs add: newPair]]].