tests - exception raising
testnotwfsa086xml
	"Source file: xmltest/not-wf/sa/086.xml"

	(self isSkippableTest: #testnotwfsa086xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa086xml
				documentURI: 'not-wf/sa/086.xml']
		raise: self parserExceptions