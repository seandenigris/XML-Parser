tests - exception raising
testp16fail2xml
	"Source file: oasis/p16fail2.xml"

	(self isSkippableTest: #testp16fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep16fail2xml
				documentURI: 'p16fail2.xml']
		raise: self parserExceptions