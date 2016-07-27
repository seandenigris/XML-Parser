tests - exception raising
testnotwfsa074xml
	"Source file: xmltest/not-wf/sa/074.xml"

	(self isSkippableTest: #testnotwfsa074xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa074xml
				documentURI: 'not-wf/sa/074.xml']
		raise: self parserExceptions