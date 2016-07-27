utility
reorderTests: aSelectorCollection
	"
	This utility method reorders test* messages the receiver (a TestCase subclass) implements.

	Given a collection of selectors in a desired order where each begins with a 'test' or 'test' + integer
	prefix, it will rename each such that they have a new 'test' + integer prefix where the integer
	corresponds to their position in the supplied collection.
	
	If the test messages in the receiver are already in the order you like but are not numbered properly,
	use the form of this message that takes no arguments to renumber them properly.
	"

	| oldSource newSource methodCategory digitsNeeded |

	(aSelectorCollection allSatisfy: [:each | each asString beginsWith: 'test'])
		ifFalse: [self error: 'Will not reorder non-test selector'].
	digitsNeeded := aSelectorCollection size asString size.
	aSelectorCollection doWithIndex: [:oldSelector :i |
		oldSource := (self sourceCodeAt: oldSelector) asString readStream.
		newSource := (String new: oldSource size) writeStream.
		methodCategory := self whichCategoryIncludesSelector: oldSelector.

		oldSource skip: 'test' size.
		[oldSource peek isDigit]
			whileTrue: [oldSource next].

		newSource
			nextPutAll: 'test';
			nextPutAll: (i printPaddedWith: $0 to: digitsNeeded);
			nextPutAll: oldSource upToEnd.

		self
			removeSelector: oldSelector;
			compile: newSource contents classified: methodCategory].