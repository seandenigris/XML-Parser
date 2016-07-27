tests - exception raising
testnotwfelement04xml
	"Source file: sun/not-wf/element04.xml"

	(self isSkippableTest: #testnotwfelement04xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfelement04xml
				documentURI: 'not-wf/element04.xml']
		raise: self parserExceptions