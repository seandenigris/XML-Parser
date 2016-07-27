tests
testXMLDeclaration
	| document |

	document := HTMLParser parse: '<?xml ?>'.
	self
		assert: document version = 1.0;
		assert: document encoding = 'UTF-8';
		deny: document isStandalone.

	document := HTMLParser parse: '<?xml version="onePointZero" encoding="UTF-16" standalone="yes"?>'.
	self
		assert: document version = 1.0;
		assert: document encoding = 'UTF-16';
		deny: document isStandalone.