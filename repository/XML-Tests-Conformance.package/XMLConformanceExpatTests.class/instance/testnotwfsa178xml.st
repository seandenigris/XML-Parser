tests - exception raising
testnotwfsa178xml
	"Source file: xmltest/not-wf/sa/178.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa178xml
				documentURI: 'not-wf/sa/178.xml']
		raise: self parserExceptions