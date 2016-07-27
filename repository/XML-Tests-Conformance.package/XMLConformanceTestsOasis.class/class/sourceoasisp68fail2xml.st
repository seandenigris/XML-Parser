source
sourceoasisp68fail2xml
	^ '<!DOCTYPE doc
[
<!ELEMENT doc (#PCDATA)>
<!ENTITY ent "replacement text">
]>
<doc>
& ent;
</doc>
'