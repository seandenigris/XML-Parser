tests - exception raising
testnotwfsa010xml
	"Source file: xmltest/not-wf/sa/010.xml"

	(self isSkippableTest: #testnotwfsa010xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa010xml
				documentURI: 'not-wf/sa/010.xml']
		raise: self parserExceptions