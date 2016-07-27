tests - exception raising
testnotwfsa139xml
	"Source file: xmltest/not-wf/sa/139.xml"

	(self isSkippableTest: #testnotwfsa139xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa139xml
				documentURI: 'not-wf/sa/139.xml']
		raise: self parserExceptions