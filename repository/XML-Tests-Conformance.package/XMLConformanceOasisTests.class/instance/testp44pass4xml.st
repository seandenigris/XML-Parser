tests
testp44pass4xml
	"Source file: oasis/p44pass4.xml"

	(self isSkippableTest: #testp44pass4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep44pass4xml
				documentURI: 'p44pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions