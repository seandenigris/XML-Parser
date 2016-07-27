testing
isInLanguage: aLanguage
	self name = 'xml:lang'
		ifTrue: [^ self hasLanguage: aLanguage].
	^ self element notNil
		and: [self element isInLanguage: aLanguage]