accessing
removeElement: anElement

	anElement isTag ifFalse: [^ self removeNode: anElement].

	self
		elementsAt: anElement localName
		remove: anElement.
	anElement hasPrefix ifTrue: [
		self
			elementsAt: anElement tag
			remove: anElement].
	self elements remove: anElement.

	^ self removeChildNode: anElement.