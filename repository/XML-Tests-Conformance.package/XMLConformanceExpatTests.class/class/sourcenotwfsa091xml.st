xml source
sourcenotwfsa091xml
	"Source file: xmltest/not-wf/sa/091.xml"

	^ '<!DOCTYPE doc [
<!NOTATION n SYSTEM "n">
<!ENTITY % foo SYSTEM "foo.xml" NDATA n>
]>
<doc></doc>
'