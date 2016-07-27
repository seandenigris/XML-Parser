tests
testProcessingInstructions
	| document |

	document :=
		XMLDOMParser parse:
			'<?xml version="1.1" standalone="yes"?><?firstTarget firstData?>',
			'<root><?secondTarget secondData?></root> '.

	self
		assert: document version = 1.1;
		assert: document nodes size = 2;
		assert: document firstNode isPI;
		assert: document firstNode target = 'firstTarget';
		assert: document firstNode data = 'firstData';
		assert: document root firstNode target = 'secondTarget';
		assert: document root firstNode data = 'secondData'.