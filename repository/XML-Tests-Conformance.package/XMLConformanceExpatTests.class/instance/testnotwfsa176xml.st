tests - exception raising
testnotwfsa176xml
	"Source file: xmltest/not-wf/sa/176.xml"

	(self isSkippableTest: #testnotwfsa176xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa176xml
				documentURI: 'not-wf/sa/176.xml']
		raise: self parserExceptions