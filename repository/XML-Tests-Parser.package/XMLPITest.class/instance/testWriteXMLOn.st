tests
testWriteXMLOn
	self
		assert: (self nodeClass target: 'target' data: 'data') printString = '<?target data?>';
		assert: (self nodeClass target: 'target ' data: ' data') printString = '<?target   data?>'.