tests
test071elementsAndContentsEnumeration
	| node nodes elements contents elementsAndContents |

	node := XMLElement new.
	elements := self newElements: 3.
	contents := Array with: (XMLStringNode string: 'test') with: (XMLStringNode string: 'test2').
	(elementsAndContents := elements copy)
		addFirst: contents first;
		add: contents second after: elements second.
	node addNodes: (self interspersedWithNodes: elementsAndContents).

	self
		assert: node elementsAndContents = elementsAndContents;
		should: [:block | node elementsAndContentsDo: block] enumerate: elementsAndContents;
		should: [:block | node contentsDo: block] enumerate: contents.