tests - exception raising
testnotwfsa002xml
	"Source file: xmltest/not-wf/sa/002.xml"

	(self isSkippableTest: #testnotwfsa002xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa002xml
				documentURI: 'not-wf/sa/002.xml']
		raise: self parserExceptions