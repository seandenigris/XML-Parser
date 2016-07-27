validation
validateNotationAttribute: anAttribute forElement: anElement
	| oldSize |

	"checking size after is faster than includes"
	oldSize := self notationAttributes size.
	(self notationAttributes
		at: anElement
		put: anAttribute;
		size) > oldSize
		ifFalse: [self errorMultipleNotationAttributesForElement: anElement].