tests
testProcessingInstructions
	| document |

	document := HTMLParser parse: '<body><?ignored data?></body>'.
	self deny: (document findElementNamed: 'body') hasChildren.