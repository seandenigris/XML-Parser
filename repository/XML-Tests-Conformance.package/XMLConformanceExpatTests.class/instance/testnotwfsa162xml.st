tests - exception raising
testnotwfsa162xml
	"Source file: xmltest/not-wf/sa/162.xml"

	(self isSkippableTest: #testnotwfsa162xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa162xml
				documentURI: 'not-wf/sa/162.xml']
		raise: self parserExceptions