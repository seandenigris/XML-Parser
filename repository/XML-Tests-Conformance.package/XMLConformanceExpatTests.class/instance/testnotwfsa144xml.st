tests - exception raising
testnotwfsa144xml
	"Source file: xmltest/not-wf/sa/144.xml"

	(self isSkippableTest: #testnotwfsa144xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa144xml
				documentURI: 'not-wf/sa/144.xml']
		raise: self parserExceptions