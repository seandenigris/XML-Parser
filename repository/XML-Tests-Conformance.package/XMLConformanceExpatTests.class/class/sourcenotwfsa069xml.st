xml source
sourcenotwfsa069xml
	"Source file: xmltest/not-wf/sa/069.xml"

	^ '<!DOCTYPE doc [
<!NOTATION eps SYSTEM "eps.exe">
<!-- missing space before NDATA -->
<!ENTITY foo SYSTEM "foo.eps"NDATA eps>
]>
<doc></doc>
'