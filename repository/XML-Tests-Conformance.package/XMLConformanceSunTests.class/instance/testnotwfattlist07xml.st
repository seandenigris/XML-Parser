tests - exception raising
testnotwfattlist07xml
	"Source file: sun/not-wf/attlist07.xml"

	(self isSkippableTest: #testnotwfattlist07xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfattlist07xml
				documentURI: 'not-wf/attlist07.xml']
		raise: self parserExceptions