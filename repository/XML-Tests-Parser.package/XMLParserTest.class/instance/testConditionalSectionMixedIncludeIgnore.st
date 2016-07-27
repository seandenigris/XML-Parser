tests
testConditionalSectionMixedIncludeIgnore
	| xml handler parser |

	xml := '
		<![INCLUDE[
			<![IGNORE[ %comment; ]]>
			<!ENTITY % comment "<!--comment]]>-->">
			<![INCLUDE[
				<![IGNORE[ %commentTwo; ]]>
				<!ENTITY % commentTwo "<!--comment]]>-->">
				%commentTwo;
			]]>
			%comment;
			%commentTwo;
		]]>
		%comment;
		%commentTwo;'.
	self
		shouldnt: [
				handler := SAXHandler on: xml.
				parser := handler parser.
				parser tokenizer tokenContext: XMLExternalSubsetContext new.
				parser parseDocument]
		raise: XMLValidationException.