tests - exception raising
testnotwfsa023xml
	"Source file: xmltest/not-wf/sa/023.xml"

	(self isSkippableTest: #testnotwfsa023xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa023xml
				documentURI: 'not-wf/sa/023.xml']
		raise: self parserExceptions