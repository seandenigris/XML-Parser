tests
testAncestorElements
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
		node ancestorElementsDo: [:each | enumerated add: each].
		self
			assert: enumerated = (ancestors select: [:each | each isElement]);
			assert: node ancestorElements asOrderedCollection = (ancestors select: [:each | each isElement])].