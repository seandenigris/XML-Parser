tests
testAttributeXMLIDDTDValidation
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE one [
					<!ELEMENT one ANY>
					<!ATTLIST one xml:id CDATA #IMPLIED>]>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE one [
					<!ELEMENT one ANY>
					<!ATTLIST one xml:id ID #IMPLIED>]>
				<one xml:id="invalid:id"/>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE one [
					<!ELEMENT one ANY>
					<!ELEMENT two ANY>
					<!ATTLIST one xml:id ID #IMPLIED>
					<!ATTLIST two xml:id ID #IMPLIED>]>
				<one xml:id="valid"><two xml:id="valid"/></one>']
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE one [
					<!ELEMENT one ANY>
					<!ELEMENT two ANY>
					<!ATTLIST one xml:id ID #IMPLIED>
					<!ATTLIST two xml:id ID #IMPLIED>]>
				<one xml:id="valid1"><two xml:id="valid2"/></one>']
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler
				parse:
					'<!DOCTYPE one [
						<!ELEMENT one ANY>
						<!ELEMENT two ANY>
						<!ATTLIST one xml:id CDATA #IMPLIED>
						<!ATTLIST two xml:id ID #IMPLIED>]>
					<one xml:id="invalid:id"><two xml:id="invalid:id"/></one>'
				usingNamespaces: true
				validation: false]
		raise: XMLValidationException.