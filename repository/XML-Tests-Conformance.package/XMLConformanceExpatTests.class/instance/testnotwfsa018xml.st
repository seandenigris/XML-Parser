tests - exception raising
testnotwfsa018xml
	"Source file: xmltest/not-wf/sa/018.xml"

	(self isSkippableTest: #testnotwfsa018xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa018xml
				documentURI: 'not-wf/sa/018.xml']
		raise: self parserExceptions