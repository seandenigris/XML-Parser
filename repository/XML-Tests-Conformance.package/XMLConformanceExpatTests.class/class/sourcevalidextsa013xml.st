xml source
sourcevalidextsa013xml
	"Source file: xmltest/valid/ext-sa/013.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (e)>
<!ELEMENT e (#PCDATA)>
<!ATTLIST e
  a1 CDATA "a1 default"
  a2 NMTOKENS "a2 default"
>
<!ENTITY x SYSTEM "013.ent">
]>
<doc>&x;</doc>
'