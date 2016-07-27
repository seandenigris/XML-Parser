assertions
should: aBlock removeElements: anElementCollection from: aParent
	| elementsRemoved |

	self assert: (anElementCollection allSatisfy: [:each | aParent elements includes: each]).
	self
		should: [elementsRemoved := aBlock value]
		removeNodes: anElementCollection
		from: aParent.
	elementsRemoved isCollection
		ifFalse: [elementsRemoved := Array with: elementsRemoved].
	self
		assert: elementsRemoved asArray = anElementCollection asArray;
		deny: (elementsRemoved anySatisfy: [:each | aParent elements includes: each]).