tests - exception raising
testp39fail2xml
	"Source file: oasis/p39fail2.xml"

	(self isSkippableTest: #testp39fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep39fail2xml
				documentURI: 'p39fail2.xml']
		raise: self parserExceptions