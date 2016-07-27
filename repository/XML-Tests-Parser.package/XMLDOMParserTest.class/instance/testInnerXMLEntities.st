tests
testInnerXMLEntities
	| document |

	document :=
		XMLDOMParser parse:
			'<!DOCTYPE test [
					<!ENTITY one "one">
					<!ENTITY two "two">
				]>
			<test name="&one;">&one;</test>'.
	self
		assert: (document root attributeAt: 'name') = 'one';
		assert: document root contentString = 'one'.

	document innerXML: '<test name="&two;">&two;</test>'.
	self
		assert: (document root attributeAt: 'name') = 'two';
		assert: document root contentString = 'two'.

	self
		should: [document innerXML: '<test name="&three;"></test>']
		raise: XMLValidationException.
	self
		should: [document innerXML: '<test name="">&four;</test>']
		raise: XMLValidationException.