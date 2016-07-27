tests
testProcessingInstructionBadTarget
	XMLStringMethodsTest badNames, #('xml' 'XML' 'XmL' 'xMl' 'xML' 'XMl')
		do: [:each |
			self
				should: [SAXHandler parse: '<?', each, ' value?><test/>']
				raise: XMLWellFormednessException]