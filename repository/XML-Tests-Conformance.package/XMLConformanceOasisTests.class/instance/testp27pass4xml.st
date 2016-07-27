tests
testp27pass4xml
	"Source file: oasis/p27pass4.xml"

	(self isSkippableTest: #testp27pass4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep27pass4xml
				documentURI: 'p27pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions