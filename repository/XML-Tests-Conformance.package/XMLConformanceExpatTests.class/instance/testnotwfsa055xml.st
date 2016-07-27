tests - exception raising
testnotwfsa055xml
	"Source file: xmltest/not-wf/sa/055.xml"

	(self isSkippableTest: #testnotwfsa055xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa055xml
				documentURI: 'not-wf/sa/055.xml']
		raise: self parserExceptions