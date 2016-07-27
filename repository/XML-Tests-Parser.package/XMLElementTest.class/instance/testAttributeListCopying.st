tests
testAttributeListCopying
	| element attributeListCopy |

	element := self newElementWithAttributes.
	attributeListCopy := element attributeNodes copy.
	self
		assert: attributeListCopy = element attributeNodes;
		deny: attributeListCopy == element attributeNodes;
		assert: attributeListCopy attributeNodesByName = element attributeNodes attributeNodesByName;
		deny: attributeListCopy attributeNodesByName == element attributeNodes attributeNodesByName;
		assert: element attributeNodes observer == element;
		assert: attributeListCopy observer isNil.