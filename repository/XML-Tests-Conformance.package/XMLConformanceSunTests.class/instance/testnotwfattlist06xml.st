tests - exception raising
testnotwfattlist06xml
	"Source file: sun/not-wf/attlist06.xml"

	(self isSkippableTest: #testnotwfattlist06xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfattlist06xml
				documentURI: 'not-wf/attlist06.xml']
		raise: self parserExceptions