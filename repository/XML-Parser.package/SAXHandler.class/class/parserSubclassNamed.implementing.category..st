subclass creation
parserSubclassNamed: aName implementing: aSelectorArray category: aCategory
	| newSubclass |

	aSelectorArray do: [:each |
		(self canUnderstand: each asSymbol)
			ifFalse: [self error: 'Cannot create parser subclass implementing ', each asString, '; unrecognized handler']].

	newSubclass :=
		self
			subclass: aName asSymbol
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: aCategory asString.

	aSelectorArray do: [:each |
		newSubclass
			compile:
				(((self ultimateSourceCodeAt: each asSymbol ifAbsent: []) asString
					copyUpTo: Character cr) copyUpTo: Character lf)
			classified: (self whichCategoryIncludesSelector: each asSymbol)].
	
	^ newSubclass.