tests
testEntityURIInheritance
	| xml parser driver |

	xml := '<!DOCTYPE root [%first;]><root>&second;</root>'.
	parser :=
		(SAXHandler
			on: xml
			documentURI: 'test.xml') parser.
	(driver := parser driver)
		dtd
			addParameterEntity: 'first'
			replacement: '<!ENTITY second "<!--comment-->">'
			from: 'test.ent'.

	self assert: driver currentURI = 'test.xml'.

	3 timesRepeat: [parser parseToken].
	self assert: driver currentURI = 'test.ent'.

	2 timesRepeat: [parser parseToken].
	self assert: driver currentURI = 'test.xml'.

	2 timesRepeat: [parser parseToken].
	self assert: driver currentURI = 'test.ent'.

	2 timesRepeat: [parser parseToken].
	self
		assert: driver currentURI = 'test.xml';
		assert: parser atEnd.