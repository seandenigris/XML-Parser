accessing
elementsToEndBeforeEnding: anElementName
	| toClose |

	toClose := OrderedCollection new.
	self openElements reverseDo: [:each |
		each = anElementName
			ifTrue: [^ toClose]
			ifFalse: [toClose addLast: each]].
	^ toClose.