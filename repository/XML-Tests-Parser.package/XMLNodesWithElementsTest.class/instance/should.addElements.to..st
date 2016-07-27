assertions
should: aBlock addElements: anElementCollection to: aParent
	| elementsAdded |

	self deny: (anElementCollection anySatisfy: [:each | aParent elements includes: each]).
	self
		should: [elementsAdded := aBlock value]
		addNodes: anElementCollection
		to: aParent.
	elementsAdded isCollection
		ifFalse: [elementsAdded := Array with: elementsAdded].
	self
		assert: elementsAdded asArray = anElementCollection asArray;
		assert: (elementsAdded allSatisfy: [:each | aParent elements includes: each]).