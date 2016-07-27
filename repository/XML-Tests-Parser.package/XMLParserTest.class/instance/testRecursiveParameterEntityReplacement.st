tests
testRecursiveParameterEntityReplacement
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY % first "&#37;second;">
					<!ENTITY % second "&#37;third;">
					<!ENTITY % third "<!--last-->">
					%first;]>
				<root/>']
		raise: XMLEntityDepthException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY % first "&#37;second;">
					<!ENTITY % second "&#37;third;">
					<!ENTITY % third "&#37;fourth;">
					<!ENTITY % fourth "<!--last-->">
					%first;]>
				<root/>']
		raise: XMLEntityDepthException.