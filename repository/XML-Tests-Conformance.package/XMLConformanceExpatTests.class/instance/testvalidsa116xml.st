tests
testvalidsa116xml
	"Source file: xmltest/valid/sa/116.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa116xml
				documentURI: 'valid/sa/116.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions