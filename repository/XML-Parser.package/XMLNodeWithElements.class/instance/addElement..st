accessing
addElement: anElement
	"accepts element name or XMLElement as argument"
	anElement isString
		ifTrue: [(self addNode: self configuration nodeFactory elementClass new) name: anElement]
		ifFalse: [self addNode: anElement]