tests
testvalidsa062xml
	"Source file: xmltest/valid/sa/062.xml"

	(self isSkippableTest: #testvalidsa062xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa062xml
				documentURI: 'valid/sa/062.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions