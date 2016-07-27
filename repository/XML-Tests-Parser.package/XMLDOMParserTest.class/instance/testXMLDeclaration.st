tests
testXMLDeclaration
	| document |

	document := XMLDOMParser parse: '<?xml version="1.0" encoding="UTF-8"?>'.
	self
		assert: document version = 1.0;
		assert: document encoding = 'UTF-8';
		deny: document isStandalone.

	document := XMLDOMParser parse: '<?xml version="1.1" encoding="UTF-16" standalone="yes"?>'.
	self
		assert: document version = 1.1;
		assert: document encoding = 'UTF-16';
		assert: document isStandalone.