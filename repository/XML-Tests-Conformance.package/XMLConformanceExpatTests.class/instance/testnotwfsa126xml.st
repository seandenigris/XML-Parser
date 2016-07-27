tests - exception raising
testnotwfsa126xml
	"Source file: xmltest/not-wf/sa/126.xml"

	(self isSkippableTest: #testnotwfsa126xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa126xml
				documentURI: 'not-wf/sa/126.xml']
		raise: self parserExceptions