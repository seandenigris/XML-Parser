private
elementsByNameAt: aName addElement: anElement
	| elementsWithName |

	elementsWithName := 
		self elementsByName
			at: aName
			ifAbsent: [
				self elementsByName at: aName put: anElement.
				^ self].

	elementsWithName isCollection
		ifTrue: [elementsWithName add: anElement]
		ifFalse: [
			self elementsByName
				at: aName
				put: (self species with: elementsWithName with: anElement)]