tests
testProcessingInstructionsWhitespace
	self
		should: [SAXHandler parse: '<pi><?target?data?></pi>']
		raise: XMLWellFormednessException.
	self
		shouldnt: [SAXHandler parse: '<pi><?target ?data  ?></pi>']
		raise: XMLWellFormednessException.