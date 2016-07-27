tests
testValidate
	| xml document |

	super testValidate.

	xml := '
		<!DOCTYPE one [
			<!ELEMENT one (two+)>
			<!ATTLIST one idref IDREF #REQUIRED>
			<!ELEMENT two EMPTY>
			<!ATTLIST two id ID #REQUIRED>]>
		<one idref="a">
			<two id="a"/><two id="b"/>
		</one>'.

	document := XMLDOMParser parse: xml.
	self
		shouldnt: [document validate]
		raise: XMLValidationException.

	document
		allElementsNamed: 'two'
		do: [:each | each attributeAt: 'id' put: 'a'].
	self
		should: [document validate]
		raise: XMLValidationException.

	document := XMLDOMParser parse: xml.
	document root name: 'zero'.
	self
		should: [document validate]
		raise: XMLValidationException.

	document := XMLDOMParser parse: xml.
	document root attributeAt: 'idref' put: 'undeclared'.
	self
		should: [document validate]
		raise: XMLValidationException.

	document := XMLDOMParser parse: xml.
	document root addElementNamed: 'three'.
	self
		should: [document validate]
		raise: XMLValidationException.

	(document := XMLDOMParser parse: xml) doctypeDefinition: nil.
	document root
		name: 'zero';
		attributeAt: 'idref' put: 'undeclared';
		addElementNamed: 'three';
		allElementsNamed: 'two' do: [:each | each attributeAt: 'id' put: 'same'].
	self
		shouldnt: [document validate]
		raise: XMLValidationException.