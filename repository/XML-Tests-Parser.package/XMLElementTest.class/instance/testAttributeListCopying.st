tests
testAttributeListCopying
	| element attributeListCopy |

	element := self newElementWithAttributes.
	attributeListCopy := element attributeNodes copy.
	self
		assert: attributeListCopy = element attributeNodes;
		deny: attributeListCopy == element attributeNodes;
		assert: attributeListCopy attributesByName = element attributeNodes attributesByName;
		deny: attributeListCopy attributesByName == element attributeNodes attributesByName;
		assert: element attributeNodes observer == element;
		assert: attributeListCopy observer isNil.