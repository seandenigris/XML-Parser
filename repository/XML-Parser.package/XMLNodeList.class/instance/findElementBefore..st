private
findElementBefore: anElement
	| elementBefore |

	elementBefore := nil.
	self do: [:each |
		each isElement
			ifTrue: [
				(each = anElement)
					ifTrue: [^ elementBefore].
				elementBefore := each]].
	^ elementBefore.