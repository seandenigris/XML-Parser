xml source
sourcep64pass1dtd
	"Source file: oasis/p64pass1.dtd"

	^ '<!ELEMENT doc EMPTY>
<![IGNORE[
Everything is ignored within an ignored section, except the
sub-section delimiters ''<!['' and '']]>''.  These must be balanced,
but it is no section keyword is required:
<![]]>
<![DUNNO[ ]]>
<![INCLUDE[
asdfasdfasdf
<!OK
]]>
] ]> ]] > ]]>
<![IGNORE[ < ![ <! [ <![]]>]]>
'