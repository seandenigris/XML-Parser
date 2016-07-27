tests - exception raising
testnotwfattlist04xml
	"Source file: sun/not-wf/attlist04.xml"

	(self isSkippableTest: #testnotwfattlist04xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfattlist04xml
				documentURI: 'not-wf/attlist04.xml']
		raise: self parserExceptions