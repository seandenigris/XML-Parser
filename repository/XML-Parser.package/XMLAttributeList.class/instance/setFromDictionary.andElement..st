private
setFromDictionary: anOrderPreservingDictionary andElement: anElement
	| attributeAssoc attributeNode |

	"Hack to reuse a dictionary for speed"
	attributesByName := anOrderPreservingDictionary dictionary.

	anOrderPreservingDictionary keysDo: [:each |
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