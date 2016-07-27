tests - exception raising
testnotwfsgml01xml
	"Source file: sun/not-wf/sgml01.xml"

	(self isSkippableTest: #testnotwfsgml01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsgml01xml
				documentURI: 'not-wf/sgml01.xml']
		raise: self parserExceptions