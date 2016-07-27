adding
addValidatorForElement: anElement contentModel: aContentModel
	| validator oldSize |

	validator :=
		((DTDContentModelParser parserForContentModel: aContentModel)
			element: anElement
			contentModel: aContentModel) parse.

	"testing the size after is faster than an includes: test before"
	oldSize := self elementValidators size.
	(self elementValidators
		at: anElement put: validator;
		size) > oldSize
		ifFalse: [self errorMultipleDeclarationsForElement: anElement]