tests
testSAXParsingInterrupt
	| uniqueSelectors parser |

	uniqueSelectors := OrderedCollection new.
	self prefixedXMLSourceSelectors do: [:each |
		(uniqueSelectors includes: each)
			ifFalse: [uniqueSelectors addLast: each]].
	uniqueSelectors do: [:each |
		(parser := SAXHandlerPluggableProxy on: self prefixedXMLSource)
			handle: each with: [:message | parser interruptParsing];
			parseDocument.
		self assert:
			(parser wasSentSelectors:
				((self prefixedXMLSourceSelectors copyUpTo: each) copyWith: each))].
		
	