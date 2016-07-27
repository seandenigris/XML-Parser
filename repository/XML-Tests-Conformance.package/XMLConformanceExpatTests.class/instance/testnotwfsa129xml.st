tests - exception raising
testnotwfsa129xml
	"Source file: xmltest/not-wf/sa/129.xml"

	(self isSkippableTest: #testnotwfsa129xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa129xml
				documentURI: 'not-wf/sa/129.xml']
		raise: self parserExceptions