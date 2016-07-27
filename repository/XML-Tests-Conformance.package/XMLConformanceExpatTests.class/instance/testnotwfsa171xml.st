tests - exception raising
testnotwfsa171xml
	"Source file: xmltest/not-wf/sa/171.xml"

	(self isSkippableTest: #testnotwfsa171xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa171xml
				documentURI: 'not-wf/sa/171.xml']
		raise: self parserExceptions