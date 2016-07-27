assertions
assertDocument: aDocumentCopy isCopyOf: aDocument
	| unvisitedPairs visitedPairs searchedClasses |

	self
		deny: aDocument == aDocumentCopy;
		assert: aDocument printString = aDocumentCopy printString;
		assert: aDocument allNodes size = aDocumentCopy allNodes size.

	unvisitedPairs := Set new.
	aDocument allNodes
		with: aDocumentCopy allNodes
		do: [:node :nodeCopy | unvisitedPairs add: node -> nodeCopy].

	visitedPairs := Set new.
	searchedClasses :=
		#(OrderedCollection Dictionary OrderPreservingStringDictionary
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
					or: [searchedClasses noneSatisfy: [:each | newPair key isKindOf: each]])
					ifFalse: [unvisitedPairs add: newPair]]].