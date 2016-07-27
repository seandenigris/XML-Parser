tests
testvalidsa096xml
	"Source file: xmltest/valid/sa/096.xml"

	(self isSkippableTest: #testvalidsa096xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa096xml
				documentURI: 'valid/sa/096.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions