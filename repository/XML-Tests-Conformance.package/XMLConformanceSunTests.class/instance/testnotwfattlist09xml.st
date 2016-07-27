tests - exception raising
testnotwfattlist09xml
	"Source file: sun/not-wf/attlist09.xml"

	(self isSkippableTest: #testnotwfattlist09xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfattlist09xml
				documentURI: 'not-wf/attlist09.xml']
		raise: self parserExceptions