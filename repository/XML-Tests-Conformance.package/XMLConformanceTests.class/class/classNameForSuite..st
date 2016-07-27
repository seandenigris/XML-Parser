accessing
classNameForSuite: aSuite
	^ ('XMLConformance',
		(self suiteClassNames
			at: aSuite
			ifAbsent: [aSuite]) capitalized,
		'Tests') asSymbol