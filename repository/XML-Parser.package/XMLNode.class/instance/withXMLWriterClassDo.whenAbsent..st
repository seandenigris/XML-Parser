printing
withXMLWriterClassDo: aOneArgBlock whenAbsent: aZeroArgBlock
	^ (self class environment hasClassNamed: #XMLWriter)
			ifTrue: [ aOneArgBlock value: (self class environment classNamed: #XMLWriter) ]
			ifFalse: [ aZeroArgBlock ]