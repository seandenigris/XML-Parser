tests - exception raising
testnotwfsa036xml
	"Source file: xmltest/not-wf/sa/036.xml"

	(self isSkippableTest: #testnotwfsa036xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa036xml
				documentURI: 'not-wf/sa/036.xml']
		raise: self parserExceptions