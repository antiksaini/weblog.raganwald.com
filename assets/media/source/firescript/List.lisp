; List.lisp; displays a list of Bryan Images;;;;; (lambda (exchange)	(let* (		(is-image-file? (lambda (file-path)			(or				(string-ends-with? file-path ".gif")				(string-ends-with? file-path ".jpeg"))))		(short (lambda (file-name)			(if (string-ends-with? file-name ".gif")				(substring file-name 0 (- (string-length file-name) 4))				(if (string-ends-with? file-name ".jpeg")					(substring file-name 0 (- (string-length file-name) 5))					""))))		(doc-list ;;; format is a short name, a file name, and an optional text description ("Gallery style")			(inject-into				(file-list "Bryan/")			;;; the collection				'()							;;; start with the empty list				(lambda (list-of-files each-file-name)					(if (is-image-file? each-file-name)						(let* (							(short-name (short each-file-name))							(clean-short-name (string-URI->string short-name))							(short-path (+ "Bryan/" short-name)) )							(cons								(list									clean-short-name		; the short name of the file									(+ "Bryan/" each-file-name)	; the full path to the file									(if (file-exists? (+ short-path ".text"))										(file->entity (+ short-path ".text"))										(if (file-exists? (+ short-path ".txt"))											(file->entity (+ short-path ".txt"))											(if (file-exists? (+ short-path ".html"))												(file->entity (+ short-path ".html"))												(if (file-exists? (+ short-path ".shtml"))													(file->evaluated-entity (+ short-path ".shtml"))													<HTML>&nbsp;</HTML>)))))								list-of-files))						list-of-files))))		)<HTML>	<SERVER>(eval://firestorm/BryanHead.lisp		"Bryan Bartle" 		<HTML><IMG SRC="/image/banner/bdb.gif" ALT="Bryan Donald Bartle" ALIGN=MIDDLE			HEIGHT=48 WIDTH=306 HSPACE="2" VSPACE="4"></HTML>		"Sample images for Bryan Bartle.")	</SERVER>	<H1>Bryan Bartle's Photo Gallery</H1>		<font size=4>My name is Bryan Donald Bartle. I was born to Shirley and Andrew	Bartle Monday May 27th at 18:08. My weight was 8 lbs 8 1/2 ounces and my height	was 58 cms (or 22 3/4 inches). My parents tell me that I have a voracious	appetite, a propensity to sleep anywhere (my favorite is the car) and an operatic	set of lungs. I make them proud even though they do seem alittle tired these days!		<p>My personal interests are eating, growing out of clothes, sleeping, smiling (at	least my parents think I'm smiling - it is really just gas!) and crawling after	all the one year girls on my street.		<p>Here are some more pictures. These pictures were taken at the all inclusive GMH	Club during the first days of my life. When I get some more time I'll put some	action shots up!		<TABLE>		<TR VALIGN=TOP>			<TD ALIGN=LEFT WIDTH=100></TD>			<TD ALIGN=LEFT WIDTH=512>				<TABLE COLSPACE=2 BORDER=1 CELLPADDING=3>					<TH><FONT SIZE=4>Snapshot</TH><TH>Description</TH>					<SERVER>						(inject-into							doc-list							""							(lambda (html-so-far each-doc-triple)								<HTML>									<SERVER>html-so-far</SERVER>									<TR>										<TD WIDTH=150 ALIGN=RIGHT VALIGN=TOP>											<FONT SIZE=4>											<A HREF="<SERVER>(second each-doc-triple)</SERVER>"><SERVER>(first each-doc-triple)</SERVER></A>										</TD>										<TD WRAP WIDTH=350 ALIGN=LEFT VALIGN=TOP>											<FONT SIZE=3><SERVER>(third each-doc-triple)</SERVER>										</TD>									</TR>								</HTML>))					</SERVER>				</TABLE>			</TD>		</TR>	</TABLE>		<p>This page was rendered dynamically in real time by examining the contents of a folder. As new images are added and old ones removed,	this page automatically updates its directory.</p>		<SERVER>eval://firestorm/firefoot.html</SERVER></HTML>))