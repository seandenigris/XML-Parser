highlighting
applyToText: aText
	| attributeStart attributeEnd |

	attributeStart := self start ifNil: [1].
	attributeEnd := self end ifNil: [aText size].
	attributeStart < attributeEnd
		ifTrue: [
			aText
				addAttribute: self color
				from: attributeStart
				to: attributeEnd].