private
cachedElementsByNameAt: aName addElement: anElement
	| elementsWithName |

	elementsWithName :=
		self cachedElementsByName
			at: aName
			ifAbsent: [
				self cachedElementsByName at: aName put: anElement.
				^ self].
	 elementsWithName isCollection
		ifTrue: [elementsWithName add: anElement]
		ifFalse: [
			self cachedElementsByName
				at: aName
				put: (OrderedCollection with: elementsWithName with: anElement)].