tests - exception raising
testnotwfsa009xml
	"Source file: xmltest/not-wf/sa/009.xml"

	(self isSkippableTest: #testnotwfsa009xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa009xml
				documentURI: 'not-wf/sa/009.xml']
		raise: self parserExceptions