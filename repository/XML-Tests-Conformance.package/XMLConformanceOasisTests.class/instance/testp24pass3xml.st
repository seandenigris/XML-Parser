tests
testp24pass3xml
	"Source file: oasis/p24pass3.xml"

	(self isSkippableTest: #testp24pass3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep24pass3xml
				documentURI: 'p24pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions