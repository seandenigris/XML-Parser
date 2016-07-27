tests
testAttributeNamesDo
	| element |

	element := XMLElement new.
	self
		should: [:block | element attributeNamesDo: block]
		enumerate: #().

	element := self newElementWithAttributes.
	self
		should: [:block | element attributeNamesDo: block]
		enumerate: element attributeNames.