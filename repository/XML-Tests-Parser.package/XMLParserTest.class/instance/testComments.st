tests
testComments
	self
		shouldnt: [SAXHandler parse: '<test><!-- <comment/> --></test>']
		raise: XMLWellFormednessException.
	self
		should: [SAXHandler parse: '<test><!-- <comment/> -- --></test>']
		raise: XMLWellFormednessException.