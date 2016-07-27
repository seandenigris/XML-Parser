accessing
newStrings: aNumber
	^ self
		createNodes: aNumber
		with: [:i | XMLStringNode string: 'test', i asString]