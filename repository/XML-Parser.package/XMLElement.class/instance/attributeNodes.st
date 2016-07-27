accessing
attributeNodes
	"Returns the attribute node list. Can be modified, but adding or removing
	attributes modify the element"
	^ attributes ifNil: [attributes := self attributeListClass observer: self]