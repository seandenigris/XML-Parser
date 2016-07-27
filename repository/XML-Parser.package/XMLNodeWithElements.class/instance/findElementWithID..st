searching
findElementWithID: anID
	"implements getElementByID()"

	| document doctypeDefinition elementsAndIDAttributes |
	
	((document := self document) notNil
		and: [(doctypeDefinition := document doctypeDefinition) notNil
			and: [doctypeDefinition hasElementIDValidator]])
		ifFalse: [^ nil].
	elementsAndIDAttributes :=
		doctypeDefinition elementIDValidator elementsAndIDAttributes.

	self allElementsDo: [:each |
		each hasAttributes
			ifTrue: [
				elementsAndIDAttributes
					at: each name
					ifPresent: [:idAttribute |
						(each attributeAt: idAttribute) = anID
							ifTrue: [^ each]]]].
	^ nil.