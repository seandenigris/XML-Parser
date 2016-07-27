notifications
renamedElement: anElement from: anOldName to: aNewName
	| oldPrefix |

	self elementsByNameAt: anOldName removeElement: anElement.
	(oldPrefix := anOldName qualifiedNamePrefix)
		ifNotEmpty: [
			self
				elementsByNameAt: (anOldName qualifiedNameLocalPart: oldPrefix)
				removeElement: anElement].

	self elementsByNameAt: anElement name insertElement: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				elementsByNameAt: anElement localName
				insertElement: anElement].