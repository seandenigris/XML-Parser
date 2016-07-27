tests - exception raising
testnotwfsa169xml
	"Source file: xmltest/not-wf/sa/169.xml"

	(self isSkippableTest: #testnotwfsa169xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa169xml
				documentURI: 'not-wf/sa/169.xml']
		raise: self parserExceptions