xml source
sourcep48pass1xml
	"Source file: oasis/p48pass1.xml"

	^ '<!DOCTYPE doc
[
<!ELEMENT doc ANY>
<!ELEMENT a (doc)>
<!ELEMENT b ((doc|a?))>
<!ELEMENT c ((a,b))>
<!ELEMENT d (doc*)>
<!ELEMENT e (doc+)>
<!ELEMENT f (doc?)>
<!ELEMENT g ((a,b)*)>
<!ELEMENT h ((a,b)?)>
<!ELEMENT i ((a,b)+)>
]>
<doc/>'