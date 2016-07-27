accessing
addElement: anElement
	"accepts element name or XMLElement as argument"
	anElement isString
		ifTrue: [(self addNode: XMLElement new) name: anElement]
		ifFalse: [self addNode: anElement]