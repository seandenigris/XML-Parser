private
setFromDictionary: aDictionary andElement: anElement
	| attributeAssoc attributeNode |

	"Hack to reuse a dictionary for speed"
	attributesByName :=
		aDictionary class == OrderPreservingDictionary
			ifTrue: [aDictionary dictionary]
			ifFalse: [aDictionary].

	aDictionary keysDo: [:each |
		attributeAssoc :=
			attributesByName
				associationAt: each
				ifAbsent: [nil].
		(attributeNode :=
			XMLAttribute
				name: each
				value: attributeAssoc value)
			addObserver: self;
			addObserver: anElement;
			element: anElement.
		attributeAssoc value: attributeNode.
		collection add: attributeNode].