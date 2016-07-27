tests
testvalidsa042xml
	"Source file: xmltest/valid/sa/042.xml"

	(self isSkippableTest: #testvalidsa042xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa042xml
				documentURI: 'valid/sa/042.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions