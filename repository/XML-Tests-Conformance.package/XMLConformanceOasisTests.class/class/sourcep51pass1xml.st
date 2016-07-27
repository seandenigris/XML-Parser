xml source
sourcep51pass1xml
	"Source file: oasis/p51pass1.xml"

	^ '<!DOCTYPE doc
[
<!ELEMENT doc (#PCDATA)>
<!ELEMENT a (#PCDATA|doc)*>
<!ELEMENT b (
#PCDATA
|
doc
|
a
|
b
)*>
<!ELEMENT c (#PCDATA)*>
]>
<doc/>'