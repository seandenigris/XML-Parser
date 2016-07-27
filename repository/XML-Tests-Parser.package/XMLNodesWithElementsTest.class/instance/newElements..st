accessing
newElements: aNumber
	^ self
		createNodes: aNumber
		with: [:i | XMLElement named: 'testElement', i printString]