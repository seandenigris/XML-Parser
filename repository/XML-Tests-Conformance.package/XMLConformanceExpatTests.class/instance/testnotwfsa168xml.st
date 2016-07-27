tests - exception raising
testnotwfsa168xml
	"Source file: xmltest/not-wf/sa/168.xml"

	(self isSkippableTest: #testnotwfsa168xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa168xml
				documentURI: 'not-wf/sa/168.xml']
		raise: self parserExceptions