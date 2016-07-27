tests
testParseDocumentWhile
	| i document continue |

	continue := true.
	self
		shouldnt: [
			i := 0.
			document :=
				(XMLDOMParser on: '<root><one>two<#malformed')
					parseDocumentWhile: [
						i + 1 > 4
							ifTrue: [continue := false].
						i := i + 1.
						continue]]
		raise: XMLParserException.

	self
		assert: document allNodes size = 4;
		assert: (document findElementNamed: 'one') nodes size = 1;
		assert: (document findElementNamed: 'one') contentString = 'two'.