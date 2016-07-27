reflective operations
doesNotUnderstand: aMessage
	| result |

	(self isHandlerMessage: aMessage)
		ifTrue: [self messageRecorder recordMessage: aMessage].

	^ (result := aMessage sendTo: saxHandler) == saxHandler
		ifTrue: [self]
		ifFalse: [result].