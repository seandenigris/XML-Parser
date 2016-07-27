tests
testp44pass5xml
	"Source file: oasis/p44pass5.xml"

	(self isSkippableTest: #testp44pass5xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep44pass5xml
				documentURI: 'p44pass5.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions