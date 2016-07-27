accessing
contentString
	| firstContentNode |

	firstContentNode := self elementsAndContents at: 1 ifAbsent: [^ ''].
	^ firstContentNode isText
		ifTrue: [firstContentNode string]
		ifFalse: ['']