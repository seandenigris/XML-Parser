accessing
newElements: aNumber
	^ self newElementsNamed: ((1 to: aNumber) collect: [:i | 'test', i asString])