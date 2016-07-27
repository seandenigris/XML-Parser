tests
testp60pass1xml
	"Source file: oasis/p60pass1.xml"

	(self isSkippableTest: #testp60pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep60pass1xml
				documentURI: 'p60pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions