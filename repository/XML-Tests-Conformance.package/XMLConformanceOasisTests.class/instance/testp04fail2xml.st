tests - exception raising
testp04fail2xml
	"Source file: oasis/p04fail2.xml"

	(self isSkippableTest: #testp04fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep04fail2xml
				documentURI: 'p04fail2.xml']
		raise: self parserExceptions