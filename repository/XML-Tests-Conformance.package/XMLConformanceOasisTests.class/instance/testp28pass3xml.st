tests
testp28pass3xml
	"Source file: oasis/p28pass3.xml"

	(self isSkippableTest: #testp28pass3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep28pass3xml
				documentURI: 'p28pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions