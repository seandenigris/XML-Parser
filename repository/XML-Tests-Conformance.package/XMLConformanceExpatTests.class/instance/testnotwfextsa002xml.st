tests - exception raising
testnotwfextsa002xml
	"Source file: xmltest/not-wf/ext-sa/002.xml"

	(self isSkippableTest: #testnotwfextsa002xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfextsa002xml
				documentURI: 'not-wf/ext-sa/002.xml']
		raise: self parserExceptions