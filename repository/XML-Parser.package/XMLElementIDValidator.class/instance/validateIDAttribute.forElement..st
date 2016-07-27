validation
validateIDAttribute: anAttribute forElement: anElement
	| oldSize |

	"checking size after is faster than includes test"
	oldSize := self idAttributes size.
	(self idAttributes
		at: anElement
		put: anAttribute;
		size) > oldSize
		ifFalse: [self errorMultipleIDAttributesForElement: anElement].