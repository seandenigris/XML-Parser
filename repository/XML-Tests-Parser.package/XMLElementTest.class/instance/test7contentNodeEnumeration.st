tests
test7contentNodeEnumeration
	| node elements stringNodes contentNodes |

	node := XMLElement new.
	elements := self newElements: 3.
	stringNodes := self newStrings: 3.
	contentNodes := self intersperse: elements with: stringNodes.
	node addNodes: (self intersperse: contentNodes with: (Array with: XMLComment new with: XMLPI new)).

	self
		assert: node contentNodes = contentNodes;
		should: [:block | node contentNodesDo: block] enumerate: contentNodes;
		should: [:block | node stringNodesDo: block] enumerate: stringNodes.