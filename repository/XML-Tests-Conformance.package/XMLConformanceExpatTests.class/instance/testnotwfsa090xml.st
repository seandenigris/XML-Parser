tests - exception raising
testnotwfsa090xml
	"Source file: xmltest/not-wf/sa/090.xml"

	(self isSkippableTest: #testnotwfsa090xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa090xml
				documentURI: 'not-wf/sa/090.xml']
		raise: self parserExceptions