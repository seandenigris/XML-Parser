tests
testAttributeNodesDo
	| element |

	element := self nodeClass new.
	self should: [:block | element attributeNodesDo: block] enumerate: #().

	element := self newElementWithAttributes.
	self
		should: [:block | element attributeNodesDo: block]
		enumerate: element attributeNodes.