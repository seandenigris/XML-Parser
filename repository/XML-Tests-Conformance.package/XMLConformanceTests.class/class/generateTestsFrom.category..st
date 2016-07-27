as yet unclassified
generateTestsFrom: xmlFile category: aString
	| tests  |

	tests := self xmlTestDriverIn: xmlFile .
	tests do: [:element | self generateTestFrom: element category: aString.]