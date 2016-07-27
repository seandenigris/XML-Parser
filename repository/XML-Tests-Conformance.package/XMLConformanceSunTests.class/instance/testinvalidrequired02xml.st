tests - exception raising
testinvalidrequired02xml
	"Source file: sun/invalid/required02.xml"

	(self isSkippableTest: #testinvalidrequired02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourceinvalidrequired02xml
				documentURI: 'invalid/required02.xml']
		raise: self parserExceptions