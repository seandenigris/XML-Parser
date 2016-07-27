tests - exception raising
testnotwfsa118xml
	"Source file: xmltest/not-wf/sa/118.xml"

	(self isSkippableTest: #testnotwfsa118xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa118xml
				documentURI: 'not-wf/sa/118.xml']
		raise: self parserExceptions