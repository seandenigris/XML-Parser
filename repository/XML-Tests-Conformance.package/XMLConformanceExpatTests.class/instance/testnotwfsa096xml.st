tests - exception raising
testnotwfsa096xml
	"Source file: xmltest/not-wf/sa/096.xml"

	(self isSkippableTest: #testnotwfsa096xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa096xml
				documentURI: 'not-wf/sa/096.xml']
		raise: self parserExceptions