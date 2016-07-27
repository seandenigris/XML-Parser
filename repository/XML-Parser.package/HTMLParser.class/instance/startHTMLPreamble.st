private
startHTMLPreamble
	#('html' 'body')
		do: [:each |
			self
				startElement: each
				prefix: ''
				uri: ''
				localName: ''
				attributes: Dictionary new]