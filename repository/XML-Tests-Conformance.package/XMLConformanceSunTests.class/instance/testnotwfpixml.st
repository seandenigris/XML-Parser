tests - exception raising
testnotwfpixml
	"Source file: sun/not-wf/pi.xml"

	self
		should: [
			self
				parse: self class sourcenotwfpixml
				documentURI: 'not-wf/pi.xml']
		raise: self exceptionClass