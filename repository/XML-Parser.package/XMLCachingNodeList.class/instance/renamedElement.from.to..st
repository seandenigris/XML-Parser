notifications
renamedElement: anElement from: anOldName to: aNewName
	| oldPrefix |

	self elementsByNameAt: anOldName removeElement: anElement.
	(oldPrefix := anOldName prefixBeforeLocalName)
		ifNotEmpty: [
			self
				elementsByNameAt: (anOldName localNameAfterPrefix: oldPrefix)
				removeElement: anElement].

	self elementsByNameAt: anElement name insertElement: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				elementsByNameAt: anElement localName
				insertElement: anElement].