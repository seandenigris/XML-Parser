tests
testvalidsa116xml
	"Source file: xmltest/valid/sa/116.xml"

	(self isSkippableTest: #testvalidsa116xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa116xml
				documentURI: 'valid/sa/116.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions