accessing
innerXML
	| writer |

	writer := XMLWriter new.
	self writeInnerXMLOn: writer.
	^ writer contents.