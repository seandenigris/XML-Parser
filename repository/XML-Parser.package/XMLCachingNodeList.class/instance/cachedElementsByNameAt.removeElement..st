private
cachedElementsByNameAt: aName removeElement: anElement
	| elementsWithName |

	(elementsWithName := self cachedElementsByName at: aName) isCollection
		ifTrue: [
			elementsWithName remove: anElement.
			elementsWithName
				ifEmpty: [self cachedElementsByName removeKey: aName]]
		ifFalse: [self cachedElementsByName removeKey: aName]