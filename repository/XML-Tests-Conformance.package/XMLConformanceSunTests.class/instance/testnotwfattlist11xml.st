tests - exception raising
testnotwfattlist11xml
	"Source file: sun/not-wf/attlist11.xml"

	(self isSkippableTest: #testnotwfattlist11xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfattlist11xml
				documentURI: 'not-wf/attlist11.xml']
		raise: self parserExceptions