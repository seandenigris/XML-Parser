tests - exception raising
testnotwfsa030xml
	"Source file: xmltest/not-wf/sa/030.xml"

	(self isSkippableTest: #testnotwfsa030xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa030xml
				documentURI: 'not-wf/sa/030.xml']
		raise: self parserExceptions