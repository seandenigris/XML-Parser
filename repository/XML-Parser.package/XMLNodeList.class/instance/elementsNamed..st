accessing
elementsNamed: aName
	| elementsWithName |

	elementsWithName :=
		self elementsByName
			at: aName
			ifAbsent: [^ self species new].

	^ elementsWithName isCollection
		ifTrue: [elementsWithName]
		ifFalse: [
			self elementsByName
				at: aName
				put: (self species with: elementsWithName)]