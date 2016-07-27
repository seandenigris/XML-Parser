tests
testAcceptingInvalidPCData
	| document |

	#('< one & two >' '& three < four >') do: [:each |
		document := HTMLParser parse: each.
		self
			assert: document allNodes size = 4;
			assert: (document findElementNamed: 'body') contentString = each].