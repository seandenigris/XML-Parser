tests
testEntityURIInheritance
	| xml parser driver |

	xml := '<!DOCTYPE root [%first;]><root xml:base="/new/xml">&second;</root>'.
	parser :=
		(SAXHandler
			on: xml
			documentURI: 'test.xml') parser.
	(driver := parser driver)
		dtd parameterEntities
			at: 'first'
			put:
				(DTDExternalParameterEntity
					name: 'first'
					replacement: '<!ENTITY second "<!--comment-->">'
					uri: 'test.ent').

	self assert: driver currentURI = 'test.xml'.

	3 timesRepeat: [parser parseToken].
	self assert: driver currentURI = 'test.ent'.

	2 timesRepeat: [parser parseToken].
	self assert: driver currentURI = 'test.xml'.

	2 timesRepeat: [parser parseToken].
	self assert: driver currentURI = '/new/xml'.

	2 timesRepeat: [parser parseToken].
	self
		assert: driver currentURI = 'test.xml';
		assert: parser atEnd.