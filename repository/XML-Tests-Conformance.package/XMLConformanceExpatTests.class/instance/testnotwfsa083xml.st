tests - exception raising
testnotwfsa083xml
	"Source file: xmltest/not-wf/sa/083.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa083xml
				documentURI: 'not-wf/sa/083.xml']
		raise: self parserExceptions