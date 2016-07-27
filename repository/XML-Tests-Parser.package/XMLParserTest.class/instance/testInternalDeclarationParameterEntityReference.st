tests
testInternalDeclarationParameterEntityReference
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY % name "root">
					<!ENTITY % contentModel "EMPTY">
					<!ELEMENT %name; %contentModel;>
				]><root/>']
		raise: XMLWellFormednessException.
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY % element "<!ELEMENT root EMPTY>">
					%element;
				]><root/>']
		raise: XMLWellFormednessException.