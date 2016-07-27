tests
testvalidsa05xml
	"Source file: sun/valid/sa05.xml"

	(self isSkippableTest: #testvalidsa05xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa05xml
				documentURI: 'valid/sa05.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions