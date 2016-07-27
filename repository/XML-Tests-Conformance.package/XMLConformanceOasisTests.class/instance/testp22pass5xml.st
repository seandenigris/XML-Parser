tests
testp22pass5xml
	"Source file: oasis/p22pass5.xml"

	(self isSkippableTest: #testp22pass5xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep22pass5xml
				documentURI: 'p22pass5.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions