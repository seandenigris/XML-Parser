tests
testProcessingInstructionBadTarget
	self
		should: [SAXHandler parse: '<test><?xml version="1.0"?></test>']
		raise: XMLWellFormednessException.
	self
		should: [SAXHandler parse: '<test><?XML version="1.0"?></test>']
		raise: XMLWellFormednessException.