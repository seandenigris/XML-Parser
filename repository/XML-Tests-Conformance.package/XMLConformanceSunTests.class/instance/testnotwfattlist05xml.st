tests - exception raising
testnotwfattlist05xml
	"Source file: sun/not-wf/attlist05.xml"

	(self isSkippableTest: #testnotwfattlist05xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfattlist05xml
				documentURI: 'not-wf/attlist05.xml']
		raise: self parserExceptions