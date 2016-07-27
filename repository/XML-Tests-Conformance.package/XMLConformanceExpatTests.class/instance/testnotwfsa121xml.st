tests - exception raising
testnotwfsa121xml
	"Source file: xmltest/not-wf/sa/121.xml"

	(self isSkippableTest: #testnotwfsa121xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa121xml
				documentURI: 'not-wf/sa/121.xml']
		raise: self parserExceptions