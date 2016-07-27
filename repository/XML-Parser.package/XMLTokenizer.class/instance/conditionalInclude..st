tokenizing
conditionalInclude: aKeyword
	aKeyword = 'INCLUDE'
		ifTrue: [^ true].
	aKeyword = 'IGNORE'
		ifTrue: [^ false].
	^ self conditionalInclude: (self parameterEntity: aKeyword) value