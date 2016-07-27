notifications
renamedElement: anElement from: anOldName to: aNewName
	anOldName splitQualifiedNameInto: [:oldPrefix :oldLocalName |
		self elementsByNameAt: oldLocalName removeElement: anElement.
		oldPrefix
			ifNotEmpty: [self elementsByNameAt: anOldName removeElement: anElement]].

	self elementsByNameAt: anElement localName insertElement: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				elementsByNameAt: anElement qualifiedName
				insertElement: anElement].