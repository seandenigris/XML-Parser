tests - exception raising
testnotwfsa097xml
	"Source file: xmltest/not-wf/sa/097.xml"

	(self isSkippableTest: #testnotwfsa097xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa097xml
				documentURI: 'not-wf/sa/097.xml']
		raise: self parserExceptions