accessing
innerXML
	| writer |

	writer := XMLWriter new.
	self writeInnerXMLWith: writer.
	^ writer contents.