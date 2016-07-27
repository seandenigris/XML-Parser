tests
testp69pass1xml
	"Source file: oasis/p69pass1.xml"

	(self isSkippableTest: #testp69pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep69pass1xml
				documentURI: 'p69pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions