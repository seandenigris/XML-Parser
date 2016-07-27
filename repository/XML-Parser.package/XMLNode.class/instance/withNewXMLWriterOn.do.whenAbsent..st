private
withNewXMLWriterOn: aStream do: aOneArgBlock whenAbsent: aZeroArgBlock
	| writer |

	writer :=
		(Smalltalk
			at: #XMLWriter
			ifAbsent: [^ aZeroArgBlock value]) on: aStream.
	self escapesContentEntitiesWhenWriting
		ifFalse: [writer escapesContentEntityReferences: false].
	^ aOneArgBlock value: writer.