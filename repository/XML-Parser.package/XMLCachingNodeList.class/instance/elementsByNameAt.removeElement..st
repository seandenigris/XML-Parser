private
elementsByNameAt: aName removeElement: anElement
	| elementsWithName |

	(elementsWithName := self elementsByName at: aName)
		isCollection
			ifTrue: [
				elementsWithName remove: anElement.
				elementsWithName ifEmpty: [self elementsByName removeKey: aName]]
			ifFalse: [self elementsByName removeKey: aName]