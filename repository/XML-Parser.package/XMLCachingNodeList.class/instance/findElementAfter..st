private
findElementAfter: anElement
	| previousElement |

	previousElement := nil.
	self do: [:each |
		each isElement
			ifTrue: [
				previousElement = anElement
					ifTrue: [^ each].
				previousElement := each]].
	^ nil.