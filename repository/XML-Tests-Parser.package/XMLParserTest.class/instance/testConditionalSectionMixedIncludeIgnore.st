tests
testConditionalSectionMixedIncludeIgnore
	| xml |

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
			(SAXHandler on: xml) parser
				context: XMLExternalSubsetContext new;
				parseDocument]
		raise: XMLValidationException.