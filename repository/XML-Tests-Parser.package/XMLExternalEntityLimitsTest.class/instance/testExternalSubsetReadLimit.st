tests
testExternalSubsetReadLimit
	| xml fileHandle externalSubset parser |

	self isSkipping
		ifTrue: [self skipOrReturnWith: [^ self]].

	fileHandle := self fileHandleForNewFileSuffixed: 'externalSubset.dtd'.
	externalSubset := '<?xml encoding="UTF-8"?><!ELEMENT test EMPTY>'.
	fileHandle writeStreamDo: [:writeStream |
		writeStream nextPutAll: externalSubset].
	xml := '<!DOCTYPE test SYSTEM "', fileHandle path, '"><test/>'.

	self
		shouldnt: [
			(parser := SAXHandler on: xml)
				externalEntityResolver externalSubsetReadLimit: externalSubset size.
			parser
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLLimitException.

	self
		should: [
			(parser := SAXHandler on: xml)
				externalEntityResolver externalSubsetReadLimit: externalSubset size - 1.
			parser
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLLimitException.

	fileHandle delete.