tests
testp28pass5xml
	"Source file: oasis/p28pass5.xml"

	(self isSkippableTest: #testp28pass5xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep28pass5xml
				documentURI: 'p28pass5.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions