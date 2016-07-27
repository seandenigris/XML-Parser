error handling
forwardToDeprecatedHandler: aDeprecatedSelector withArgumentOrder: aPositionArray orTo: aNewSelector
	| parentContext |

	parentContext := thisContext sender.
	(self class includesSelector: aDeprecatedSelector)
		ifFalse: [
			aNewSelector ifNil: [^ self].
			^ self
				perform: aNewSelector
				withEnoughArguments: parentContext arguments].

	(Deprecation
		method: (self class lookupSelector: aDeprecatedSelector)
		explanation: 'use ', parentContext selector, ' instead'
		on: nil
		in: nil) signal.

	self
		perform: aDeprecatedSelector
		withArguments: (aPositionArray collect: [:pos | parentContext arguments at: pos]).