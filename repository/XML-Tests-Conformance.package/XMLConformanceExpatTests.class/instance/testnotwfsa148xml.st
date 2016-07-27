tests - exception raising
testnotwfsa148xml
	"Source file: xmltest/not-wf/sa/148.xml"

	(self isSkippableTest: #testnotwfsa148xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa148xml
				documentURI: 'not-wf/sa/148.xml']
		raise: self parserExceptions