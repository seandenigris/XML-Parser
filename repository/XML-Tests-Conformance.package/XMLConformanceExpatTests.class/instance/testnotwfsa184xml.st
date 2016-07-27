tests - exception raising
testnotwfsa184xml
	"Source file: xmltest/not-wf/sa/184.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa184xml
				documentURI: 'not-wf/sa/184.xml']
		raise: self parserExceptions