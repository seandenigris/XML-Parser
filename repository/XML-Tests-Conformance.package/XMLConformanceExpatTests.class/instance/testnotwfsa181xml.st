tests - exception raising
testnotwfsa181xml
	"Source file: xmltest/not-wf/sa/181.xml"

	(self isSkippableTest: #testnotwfsa181xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa181xml
				documentURI: 'not-wf/sa/181.xml']
		raise: self parserExceptions