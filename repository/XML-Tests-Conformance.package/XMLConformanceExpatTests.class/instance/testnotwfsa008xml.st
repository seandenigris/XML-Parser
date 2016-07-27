tests - exception raising
testnotwfsa008xml
	"Source file: xmltest/not-wf/sa/008.xml"

	(self isSkippableTest: #testnotwfsa008xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa008xml
				documentURI: 'not-wf/sa/008.xml']
		raise: self parserExceptions