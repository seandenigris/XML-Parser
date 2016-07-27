printing
printOn: aStream
	| writer |

	writer := XMLWriter on: aStream.
	self printXMLOn: writer.
	writer flushMarkup.