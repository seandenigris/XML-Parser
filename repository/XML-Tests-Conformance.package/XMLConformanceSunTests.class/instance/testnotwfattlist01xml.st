tests - exception raising
testnotwfattlist01xml
	"Source file: sun/not-wf/attlist01.xml"

	(self isSkippableTest: #testnotwfattlist01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfattlist01xml
				documentURI: 'not-wf/attlist01.xml']
		raise: self parserExceptions