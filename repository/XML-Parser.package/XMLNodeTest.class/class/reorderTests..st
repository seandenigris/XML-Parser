private
reorderTests: aSelectorCollection
	"
	self reorderTests:

		((self selectors select: [:each | each asString beginsWith: 'test'])
			sortBy: [:a : b | (a asString compare: b asString) < 3]) asArray
	"

	| oldSource newSource methodCategory |

	aSelectorCollection doWithIndex: [:oldSelector :i |
		oldSource := (self sourceCodeAt: oldSelector) asString readStream.
		newSource := (String new: oldSource size) writeStream.
		methodCategory := self whichCategoryIncludesSelector: oldSelector.

		oldSource skip: 'test' size.
		[oldSource peek isDigit]
			whileTrue: [oldSource next].

		newSource
			nextPutAll: 'test';
			nextPutAll: (i printPaddedWith: $0 to: 3);
			nextPutAll: oldSource upToEnd.

		self
			removeSelector: oldSelector;
			compile: newSource contents classified: methodCategory].