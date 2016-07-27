tests - exception raising
testnotwfsa091xml
	"Source file: xmltest/not-wf/sa/091.xml"

	(self isSkippableTest: #testnotwfsa091xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa091xml
				documentURI: 'not-wf/sa/091.xml']
		raise: self parserExceptions