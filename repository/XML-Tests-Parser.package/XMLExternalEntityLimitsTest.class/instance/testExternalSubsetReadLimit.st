tests
testExternalSubsetReadLimit
	| xml externalSubset fileName parser |

	self skipOrReturnWith: [^ self].

	fileName := 'externalSubset.dtd'.
	externalSubset := '<?xml encoding="UTF-8"?><!ELEMENT test EMPTY>'.
	self fileNamed: fileName write: externalSubset.
	xml := '<!DOCTYPE test SYSTEM "', fileName, '"><test/>'.
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
	self deleteFileNamed: fileName.