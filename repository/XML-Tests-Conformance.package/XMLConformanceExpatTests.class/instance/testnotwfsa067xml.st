tests - exception raising
testnotwfsa067xml
	"Source file: xmltest/not-wf/sa/067.xml"

	(self isSkippableTest: #testnotwfsa067xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa067xml
				documentURI: 'not-wf/sa/067.xml']
		raise: self parserExceptions