notifications
renamedElement: anElement from: anOldName to: aNewName
	| oldPrefix |

	self
		cachedElementsByNameAt: anOldName
		removeElement: anElement.
	(oldPrefix := anOldName prefixBeforeLocalName)
		ifNotEmpty: [
			self
				cachedElementsByNameAt: (anOldName localNameAfterPrefix: oldPrefix)
				removeElement: anElement].
	self
		cachedElementsByNameAt: anElement name
		insertElement: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				cachedElementsByNameAt: anElement localName
				insertElement: anElement].