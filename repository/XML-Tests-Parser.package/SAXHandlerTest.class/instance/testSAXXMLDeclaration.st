tests
testSAXXMLDeclaration
	| parser selectors arguments |

	(parser := SAXHandlerProxy saxHandler:
		(SAXHandler on: '<?xml version="1.0" encoding="UTF-8"?>'))
		parseDocument.
	selectors := #(startDocument xmlVersion:encoding:standalone: endDocument).
	self assert: (parser wasSentSelectors: selectors).

	arguments := parser argumentsSentWith: #xmlVersion:encoding:standalone:.
	self
		assert: arguments first = 1.0;
		assert: arguments second = 'UTF-8';
		deny: arguments third.

	(parser := SAXHandlerProxy saxHandler:
		(SAXHandler on: '<?xml version="1.1" encoding="utf-8" standalone="yes"?>'))
		parseDocument.
	self assert: (parser wasSentSelectors: selectors).

	arguments := (parser argumentsSentWith: #xmlVersion:encoding:standalone:).
	self
		assert: arguments first = 1.1;
		assert: arguments second = 'utf-8';
		assert: arguments third.