tests
testp22pass5xml
	"Source file: oasis/p22pass5.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep22pass5xml
				documentURI: 'p22pass5.xml']
		raise: self exceptionClass