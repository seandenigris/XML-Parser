tests - exception raising
testnotwfsa076xml
	"Source file: xmltest/not-wf/sa/076.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa076xml
				documentURI: 'not-wf/sa/076.xml']
		raise: self parserExceptions