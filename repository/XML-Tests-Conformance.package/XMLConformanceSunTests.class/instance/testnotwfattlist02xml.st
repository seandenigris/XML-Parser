tests - exception raising
testnotwfattlist02xml
	"Source file: sun/not-wf/attlist02.xml"

	(self isSkippableTest: #testnotwfattlist02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfattlist02xml
				documentURI: 'not-wf/attlist02.xml']
		raise: self parserExceptions