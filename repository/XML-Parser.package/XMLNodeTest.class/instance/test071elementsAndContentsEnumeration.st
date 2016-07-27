tests
test071elementsAndContentsEnumeration
	| node nodes elements contents elementsAndContents |

	node := XMLElement new.
	elements := self newElements: 3.
	contents := self newStrings: 3.
	elementsAndContents := self intersperse: elements with: contents.
	node addNodes: (self interspersedWithNodes: elementsAndContents).

	self
		assert: node elementsAndContents = elementsAndContents;
		should: [:block | node elementsAndContentsDo: block] enumerate: elementsAndContents;
		should: [:block | node contentsDo: block] enumerate: contents.