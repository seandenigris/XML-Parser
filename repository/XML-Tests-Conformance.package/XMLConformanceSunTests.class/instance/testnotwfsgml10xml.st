tests - exception raising
testnotwfsgml10xml
	"Source file: sun/not-wf/sgml10.xml"

	(self isSkippableTest: #testnotwfsgml10xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsgml10xml
				documentURI: 'not-wf/sgml10.xml']
		raise: self parserExceptions