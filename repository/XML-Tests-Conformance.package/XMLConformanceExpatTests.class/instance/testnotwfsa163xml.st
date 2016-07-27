tests - exception raising
testnotwfsa163xml
	"Source file: xmltest/not-wf/sa/163.xml"

	(self isSkippableTest: #testnotwfsa163xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa163xml
				documentURI: 'not-wf/sa/163.xml']
		raise: self parserExceptions