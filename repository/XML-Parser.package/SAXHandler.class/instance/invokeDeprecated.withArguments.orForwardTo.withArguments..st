error handling
invokeDeprecated: aDeprecatedSelector withArguments: anOldArgumentArray orForwardTo: aNewSelector withArguments: aNewArgumentArray
	| parentContext |

	parentContext := thisContext sender.
	(self class includesSelector: aDeprecatedSelector)
		ifFalse: [
			aNewSelector ifNil: [^ self].
			^ self
				perform: aNewSelector
				withArguments: aNewArgumentArray].

	(Deprecation
		method: (self class lookupSelector: aDeprecatedSelector)
		explanation: 'use ', parentContext selector, ' instead'
		on: nil
		in: nil) signal.
	self
		perform: aDeprecatedSelector
		withArguments: anOldArgumentArray.