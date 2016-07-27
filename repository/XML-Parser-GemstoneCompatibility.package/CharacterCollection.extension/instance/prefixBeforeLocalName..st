*XML-Parser-GemstoneCompatibility
prefixBeforeLocalName: aLocalName
	| prefixSize |

	(prefixSize := self size - aLocalName size - 1) > 0
		ifTrue: [^ self copyFrom: 1 to: prefixSize]
		ifFalse: [^ '']