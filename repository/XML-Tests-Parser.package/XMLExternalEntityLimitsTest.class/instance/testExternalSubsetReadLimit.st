tests
testExternalSubsetReadLimit
	| xml externalSubset fileName parser |

	self isSkipping
		ifTrue: [self skip].

	fileName := 'externalSubset.dtd'.
	externalSubset := '<?xml encoding="UTF-8"?><!ELEMENT test EMPTY>'.
	self fileNamed: fileName write: externalSubset.
	xml := '<!DOCTYPE test SYSTEM "', fileName, '"><test/>'.
	self
		shouldnt: [
			(parser := SAXHandler on: xml)
				externalSubsetReadLimit: externalSubset size;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLLimitException.
	self
		should: [
			(parser := SAXHandler on: xml)
				externalSubsetReadLimit: externalSubset size - 1;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLLimitException.
	self deleteFileNamed: fileName.