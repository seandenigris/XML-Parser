tests - exception raising
testnotwfsa159xml
	"Source file: xmltest/not-wf/sa/159.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa159xml
				documentURI: 'not-wf/sa/159.xml']
		raise: self parserExceptions