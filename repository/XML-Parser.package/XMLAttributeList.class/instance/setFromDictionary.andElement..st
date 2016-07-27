private
setFromDictionary: aDictionary andElement: anElement
	| attributeNode |

	"Hack to reuse a dictionary for speed"
	attributesByName :=
		aDictionary class == OrderPreservingDictionary
			ifTrue: [aDictionary dictionary]
			ifFalse: [aDictionary].

	aDictionary keysDo: [:each |
		attributeNode :=
			XMLAttribute
				name: each
				value: (attributesByName at: each ifAbsent: ['']).
		attributeNode
			addObserver: self;
			addObserver: anElement;
			element: anElement.
		collection add: attributeNode.
		attributesByName at: each put: attributeNode].