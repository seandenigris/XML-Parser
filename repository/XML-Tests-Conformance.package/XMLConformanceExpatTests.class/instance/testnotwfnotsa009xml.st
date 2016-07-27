tests - exception raising
testnotwfnotsa009xml
	"Source file: xmltest/not-wf/not-sa/009.xml"

	self
		should: [
			self
				parse: self class sourcenotwfnotsa009xml
				documentURI: 'not-wf/not-sa/009.xml']
		raise: self parserExceptions