private
elementsByNameAt: aName addElementFirst: anElement
	| elementsWithName |

	elementsWithName :=
		self elementsByName
			at: aName
			ifAbsent: [
				self elementsByName at: aName put: anElement.
				^ self].

	elementsWithName isCollection
		ifTrue: [elementsWithName addFirst: anElement]
		ifFalse: [
			self elementsByName
				at: aName
				put: [self species with: anElement with: elementsWithName]].