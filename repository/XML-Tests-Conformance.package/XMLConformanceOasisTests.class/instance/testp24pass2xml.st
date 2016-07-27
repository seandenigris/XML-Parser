tests
testp24pass2xml
	"Source file: oasis/p24pass2.xml"

	(self isSkippableTest: #testp24pass2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep24pass2xml
				documentURI: 'p24pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions