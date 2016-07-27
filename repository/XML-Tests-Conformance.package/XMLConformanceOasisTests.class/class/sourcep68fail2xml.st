xml source
sourcep68fail2xml
	"Source file: oasis/p68fail2.xml"

	^ '<!DOCTYPE doc
[
<!ELEMENT doc (#PCDATA)>
<!ENTITY ent "replacement text">
]>
<doc>
& ent;
</doc>
'