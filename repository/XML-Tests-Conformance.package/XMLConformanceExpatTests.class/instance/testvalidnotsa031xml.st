tests
testvalidnotsa031xml
	"Source file: xmltest/valid/not-sa/031.xml"

	(self isSkippableTest: #testvalidnotsa031xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa031xml
				documentURI: 'valid/not-sa/031.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions