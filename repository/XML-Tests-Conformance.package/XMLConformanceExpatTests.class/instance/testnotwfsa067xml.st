tests - exception raising
testnotwfsa067xml
	"Source file: xmltest/not-wf/sa/067.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa067xml
				documentURI: 'not-wf/sa/067.xml']
		raise: self parserExceptions