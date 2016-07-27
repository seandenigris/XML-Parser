accessing
contentString
	| firstContentNode |

	firstContentNode := self elementsAndContents first.
	^ (firstContentNode notNil and:[firstContentNode isText])
		ifTrue: [firstContentNode string]
		ifFalse: ['']