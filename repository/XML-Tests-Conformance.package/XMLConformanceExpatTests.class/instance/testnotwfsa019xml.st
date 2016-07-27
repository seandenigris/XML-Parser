tests - exception raising
testnotwfsa019xml
	"Source file: xmltest/not-wf/sa/019.xml"

	(self isSkippableTest: #testnotwfsa019xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa019xml
				documentURI: 'not-wf/sa/019.xml']
		raise: self parserExceptions