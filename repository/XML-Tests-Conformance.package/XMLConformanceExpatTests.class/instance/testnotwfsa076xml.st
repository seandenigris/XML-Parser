tests - exception raising
testnotwfsa076xml
	"Source file: xmltest/not-wf/sa/076.xml"

	(self isSkippableTest: #testnotwfsa076xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa076xml
				documentURI: 'not-wf/sa/076.xml']
		raise: self parserExceptions