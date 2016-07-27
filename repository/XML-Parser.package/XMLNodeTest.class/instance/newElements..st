accessing
newElements: aNumber
	^ self
		createNodes: aNumber
		with: [:i | XMLElement named: 'test', i asString]