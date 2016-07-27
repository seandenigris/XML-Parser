printing
withNewXMLWriterOn: aStream do: aOneArgBlock whenAbsent: aZeroArgBlock
	^ (self class environment hasClassNamed: #XMLWriter)
		ifTrue: [ aOneArgBlock value: ((self class environment classNamed: #XMLWriter) on: aStream)]
		ifFalse: [ aZeroArgBlock value ]