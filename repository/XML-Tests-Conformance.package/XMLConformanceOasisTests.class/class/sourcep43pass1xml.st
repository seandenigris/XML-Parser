xml source
sourcep43pass1xml
	"Source file: oasis/p43pass1.xml"

	^ '<!DOCTYPE elem
[
<!ELEMENT elem (#PCDATA|elem)*>
<!ENTITY ent "<elem>CharData</elem>">
]>
<elem>
CharData&#32;
<!--comment-->
<![CDATA[
<elem>
CharData&#32;
<!--comment-->
<?pi?>&ent;&quot;
CharData
</elem>
]]>
<![CDATA[
<elem>
CharData&#32;
<!--comment-->
<?pi?>&ent;&quot;
CharData
</elem>
]]>
<?pi?>&ent;&quot;
CharData
</elem>
'