tests
testProcessingInstructionUnterminated
	#('<?' '<??' '<??>' '<?name' '<?name value' '<?name value?' '<?name value>')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]