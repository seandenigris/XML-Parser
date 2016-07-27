tests - exception raising
testnotwfsa065xml
	"Source file: xmltest/not-wf/sa/065.xml"

	(self isSkippableTest: #testnotwfsa065xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa065xml
				documentURI: 'not-wf/sa/065.xml']
		raise: self parserExceptions