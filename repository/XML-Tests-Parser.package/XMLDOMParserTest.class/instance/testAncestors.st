tests
testAncestors
	| document nodesAndAncestors ancestorStack |

	document := XMLDOMParser parse: self addressBookXML.

	nodesAndAncestors := IdentityDictionary new.
	ancestorStack := OrderedCollection new.
	document allNodesDo: [:each |
		[ancestorStack isEmpty
			or: [ancestorStack last == each parent]]
			whileFalse: [ancestorStack removeLast].
		nodesAndAncestors at: each put: ancestorStack reversed.
		ancestorStack addLast: each].

	nodesAndAncestors keysAndValuesDo: [:node :ancestors | | enumerated |
		enumerated := OrderedCollection new.
		node ancestorNodesDo: [:each | enumerated add: each].
		self
			assert: enumerated = ancestors;
			assert: node ancestorNodes asOrderedCollection = ancestors].