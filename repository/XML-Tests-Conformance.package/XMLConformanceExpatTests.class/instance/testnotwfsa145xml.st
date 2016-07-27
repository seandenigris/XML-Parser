tests - exception raising
testnotwfsa145xml
	"Source file: xmltest/not-wf/sa/145.xml"

	(self isSkippableTest: #testnotwfsa145xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa145xml
				documentURI: 'not-wf/sa/145.xml']
		raise: self parserExceptions