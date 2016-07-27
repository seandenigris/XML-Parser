tests
testp22pass6xml
	"Source file: oasis/p22pass6.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep22pass6xml
				documentURI: 'p22pass6.xml']
		raise: self exceptionClass