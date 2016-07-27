tests - exception raising
testnotwfsa186xml
	"Source file: xmltest/not-wf/sa/186.xml"

	(self isSkippableTest: #testnotwfsa186xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa186xml
				documentURI: 'not-wf/sa/186.xml']
		raise: self parserExceptions