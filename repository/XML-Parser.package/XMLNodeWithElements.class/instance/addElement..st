accessing
addElement: anElement

	anElement isTag ifFalse: [^ self addNode: anElement].

	self
		elementsAt: anElement localName
		add: anElement.
	anElement hasPrefix ifTrue: [
		self
			elementsAt: anElement tag
			add: anElement].
	self elements add: anElement.

	^ self addChildNode: anElement.