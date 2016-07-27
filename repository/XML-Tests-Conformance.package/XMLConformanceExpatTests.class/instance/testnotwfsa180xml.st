tests - exception raising
testnotwfsa180xml
	"Source file: xmltest/not-wf/sa/180.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa180xml
				documentURI: 'not-wf/sa/180.xml']
		raise: self parserExceptions