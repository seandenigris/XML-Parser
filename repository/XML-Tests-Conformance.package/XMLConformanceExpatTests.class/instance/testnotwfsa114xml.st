tests - exception raising
testnotwfsa114xml
	"Source file: xmltest/not-wf/sa/114.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa114xml
				documentURI: 'not-wf/sa/114.xml']
		raise: self parserExceptions