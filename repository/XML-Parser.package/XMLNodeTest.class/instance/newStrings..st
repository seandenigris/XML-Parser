accessing
newStrings: aNumber
	^ self
		createNodes: aNumber
		with: [:i | XMLString string: 'test', i printString]