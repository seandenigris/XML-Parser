accessing
elementNamed: aName ifAbsent: aBlock
	| elementsWithName |

	elementsWithName := self elementsByName at: aName ifAbsent: [^ aBlock value].

	^ elementsWithName isCollection
		ifTrue: [elementsWithName first]
		ifFalse: [elementsWithName]