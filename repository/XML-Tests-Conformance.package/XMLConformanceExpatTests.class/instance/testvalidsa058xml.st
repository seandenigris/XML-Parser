tests
testvalidsa058xml
	"Source file: xmltest/valid/sa/058.xml"

	(self isSkippableTest: #testvalidsa058xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa058xml
				documentURI: 'valid/sa/058.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions