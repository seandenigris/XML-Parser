tests - exception raising
testnotwfsa102xml
	"Source file: xmltest/not-wf/sa/102.xml"

	(self isSkippableTest: #testnotwfsa102xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa102xml
				documentURI: 'not-wf/sa/102.xml']
		raise: self parserExceptions