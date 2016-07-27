tests
testp01pass3xml
	"Source file: oasis/p01pass3.xml"

	(self isSkippableTest: #testp01pass3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep01pass3xml
				documentURI: 'p01pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions