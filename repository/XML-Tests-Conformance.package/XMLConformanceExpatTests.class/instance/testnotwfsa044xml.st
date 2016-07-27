tests - exception raising
testnotwfsa044xml
	"Source file: xmltest/not-wf/sa/044.xml"

	(self isSkippableTest: #testnotwfsa044xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa044xml
				documentURI: 'not-wf/sa/044.xml']
		raise: self parserExceptions