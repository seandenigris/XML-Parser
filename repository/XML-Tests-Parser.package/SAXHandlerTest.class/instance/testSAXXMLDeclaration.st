tests
testSAXXMLDeclaration
	| parser declarationMessage |

	(parser := SAXHandlerProxy saxHandler:
		(SAXHandler on: '<?xml version="1.0" encoding="UTF-8"?>'))
		parseDocument.
	declarationMessage :=
		(parser sentHandlerMessages detect: [:each |
			each selector == #xmlVersion:encoding:standalone:]).
	self
		assert: declarationMessage arguments first = 1.0;
		assert: declarationMessage arguments second = 'UTF-8';
		deny: declarationMessage arguments third.

	(parser := SAXHandlerProxy saxHandler:
		(SAXHandler on: '<?xml version="1.1" encoding="UTF-16" standalone="yes"?>'))
		parseDocument.
	declarationMessage :=
		(parser sentHandlerMessages detect: [:each |
			each selector == #xmlVersion:encoding:standalone:]).
	self
		assert: declarationMessage arguments first = 1.1;
		assert: declarationMessage arguments second = 'UTF-16';
		assert: declarationMessage arguments third.