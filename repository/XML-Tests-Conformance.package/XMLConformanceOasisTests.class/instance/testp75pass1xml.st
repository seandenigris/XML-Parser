tests
testp75pass1xml
	"Source file: oasis/p75pass1.xml"

	(self isSkippableTest: #testp75pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep75pass1xml
				documentURI: 'p75pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions