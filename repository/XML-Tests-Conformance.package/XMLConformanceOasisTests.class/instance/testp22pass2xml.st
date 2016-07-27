tests
testp22pass2xml
	"Source file: oasis/p22pass2.xml"

	(self isSkippableTest: #testp22pass2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep22pass2xml
				documentURI: 'p22pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions