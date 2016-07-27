tests - exception raising
testnotwfuri01xml
	"Source file: sun/not-wf/uri01.xml"

	(self isSkippableTest: #testnotwfuri01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfuri01xml
				documentURI: 'not-wf/uri01.xml']
		raise: self parserExceptions