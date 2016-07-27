tests
testIncompleteCommentTokens
	#('<!--' '<!-- comment' '<!-- comment -' '<!-- comment --')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]