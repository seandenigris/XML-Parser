tests
testp40pass3xml
	"Source file: oasis/p40pass3.xml"

	(self isSkippableTest: #testp40pass3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep40pass3xml
				documentURI: 'p40pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions