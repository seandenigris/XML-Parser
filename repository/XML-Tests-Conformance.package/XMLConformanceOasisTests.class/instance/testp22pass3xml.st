tests
testp22pass3xml
	"Source file: oasis/p22pass3.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep22pass3xml
				documentURI: 'p22pass3.xml']
		raise: self exceptionClass