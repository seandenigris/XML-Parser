tests - exception raising
testnotwfsa125xml
	"Source file: xmltest/not-wf/sa/125.xml"

	(self isSkippableTest: #testnotwfsa125xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa125xml
				documentURI: 'not-wf/sa/125.xml']
		raise: self parserExceptions