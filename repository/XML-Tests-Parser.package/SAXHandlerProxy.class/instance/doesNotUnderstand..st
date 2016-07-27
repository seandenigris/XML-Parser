reflective operations
doesNotUnderstand: aMessage
	| result |

	(self handlerCategories includes:
		(saxHandler class whichCategoryIncludesSelector: aMessage selector))
		ifTrue: [self messageRecorder recordMessage: aMessage].

	^ (result := aMessage sendTo: saxHandler) == saxHandler
		ifTrue: [self]
		ifFalse: [result].