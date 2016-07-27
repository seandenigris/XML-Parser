reflective operations
doesNotUnderstand: aMessage
	| result |

	(self handlerCategories anySatisfy: [:each |
		(saxHandler class selectorsInCategory: each)
			includes: aMessage selector])
		ifTrue: [self sentHandlerMessages addLast: aMessage].

	^ (result := aMessage sendTo: saxHandler) == saxHandler
		ifTrue: [self]
		ifFalse: [result].