tests - exception raising
testnotwfsa151xml
	"Source file: xmltest/not-wf/sa/151.xml"

	(self isSkippableTest: #testnotwfsa151xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa151xml
				documentURI: 'not-wf/sa/151.xml']
		raise: self parserExceptions