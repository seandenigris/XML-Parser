searching
findElementWithID: anID
	"Works like XML DOM Level 2's getElementByID(). Unlike HTML, it requires
	a DTD with ID declarations to identify ID attributes."

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