notifications
renamedElement: anElement from: anOldName to: aNewName
	self elementsByNameAt: anOldName removeElement: anElement.
	anOldName splitQualifiedNameInto: [:oldPrefix :oldLocalName |
		oldPrefix ifNotEmpty: [
			self
				elementsByNameAt: oldLocalName
				removeElement: anElement]].

	self elementsByNameAt: anElement name insertElement: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				elementsByNameAt: anElement localName
				insertElement: anElement].