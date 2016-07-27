tests
testp70pass1xml
	"Source file: oasis/p70pass1.xml"

	(self isSkippableTest: #testp70pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep70pass1xml
				documentURI: 'p70pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions