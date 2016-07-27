tests - exception raising
testnotwfsa157xml
	"Source file: xmltest/not-wf/sa/157.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa157xml
				documentURI: 'not-wf/sa/157.xml']
		raise: self parserExceptions