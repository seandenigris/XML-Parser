tests - exception raising
testnotwfsa092xml
	"Source file: xmltest/not-wf/sa/092.xml"

	(self isSkippableTest: #testnotwfsa092xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa092xml
				documentURI: 'not-wf/sa/092.xml']
		raise: self parserExceptions