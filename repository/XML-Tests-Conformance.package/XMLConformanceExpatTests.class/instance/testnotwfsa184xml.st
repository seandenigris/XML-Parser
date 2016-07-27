tests - exception raising
testnotwfsa184xml
	"Source file: xmltest/not-wf/sa/184.xml"

	(self isSkippableTest: #testnotwfsa184xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa184xml
				documentURI: 'not-wf/sa/184.xml']
		raise: self parserExceptions