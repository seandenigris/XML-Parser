*XML-Parser
xmlAttributeAt: aKey put: aValue
	"should be identical to at:put: except with an ifFalse: block
	added to handle duplicates"
	| oldSize |

	oldSize := dictionary size.
	dictionary at: aKey put: aValue.
	dictionary size > oldSize
		ifTrue: [
			orderedKeys size > oldSize
				ifFalse: [self growOrderedKeys].
			orderedKeys at: oldSize + 1 put: aKey]
		ifFalse: [self errorDuplicateXMLAttribute: aKey].
	^ aValue.