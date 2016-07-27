tests
testAttributeNamesAndValuesDo
	| element pairs |

	pairs := OrderedCollection new.
	XMLElement new attributeNamesAndValuesDo: [:attributeName :attributeValue|
		pairs add: attributeName -> attributeValue].
	self assert: pairs isEmpty.

	element := self newElementWithAttributes.
	element attributeNamesAndValuesDo: [:attributeName :attributeValue|
		pairs add: attributeName -> attributeValue].
	self assert:
		pairs =
			((element attributeNodes collect: [:each |
				each name -> each value]) asOrderedCollection).