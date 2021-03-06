A simple makefile for building google docs with a latex compiler.

Prerequisites
=============

You will need to install the google command line tool using python `easy_install`.  It is important to use version 2.0.14 as there is [an unresolved issue with 2.0.15](http://code.google.com/p/googlecl/issues/detail?id=449).

    $ easy_install googlecl
    $ easy_install http://gdata-python-client.googlecode.com/files/gdata-2.0.14.tar.gz

Usage
=====
Checkout the makefile from the github repository.

	$ git checkout git://github.com/marmbrus/gtex.git <papername>
	
Update the `FILENAME` and `DOCTITLE` variables in the Makefile.  Create a doc in google docs named `DOCTITLE`.
	
Tips
====
You can embed the bibliography inside your document by placing the `filecontents` environment at the top.

	\begin{filecontents*}{google.statement.bib}
		@inproceedings...
		
	\end{filecontents*}
	
If you are receiving the error: `Specified multiple source files, but destination "..." is not a directory` check to make sure you do not have multiple files in Google Drive with the same file name.

For editing I've found it is nice to use the following settings:
* Monospaced font of your choice (e.g., "Consolas")
* In File->Page Setup: Choose Orientation="Landscape", Paper size="Legal", Margins=0
* View->Uncheck "Print Layout"
