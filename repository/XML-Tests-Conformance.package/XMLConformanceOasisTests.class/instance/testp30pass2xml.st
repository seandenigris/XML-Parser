tests
testp30pass2xml
	"Source file: oasis/p30pass2.xml"

	(self isSkippableTest: #testp30pass2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep30pass2xml
				documentURI: 'p30pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions