changequote({,})dnl   Change M4 quote sequence
changecom(`[[[[')dnl  Do not handle # as comments 
divert(-1)dnl         Ignorne this first part in output (COMMENT)

Images.m4

This is M4 source file which is split into a number of separate html files
to implement netscape ``frames''. Specifically to generate the files...
  1/ Images.html        -- containing the FRAME initialization tags
                           and the ``non-frame'' document.
  2/ Images_Index.html  -- the frame `index' part
  3/ Images_Top.html    -- the other blurb to form the welcome document
  4/ Images_Ext.html    -- External (no preview) ``Limited Access'' Document
  5/ Images_Basic.html  -- Basic Image Set Index Replacement

To generate each of these files M4 commands are used with one of the
following pre-processor defines (to produce the above files)...
     DEFAULT   INDEX   TOP   EXT   BASIC
Output is undefined if none of the above defines are given.

Example File Generation...
   m4 -DDEFAULT Images.m4 > Images.html

Anthony Thyssen     27 July 2000      <anthony@cit.gu.edu.au>

define({VERSION}, 2.0)
define({ARCHIVES}, {http://www.cit.gu.edu.au/images/Archives})
ifdef({BASIC}, {define({INDEX})})
divert(0)dnl  start processing the text NOW!
{<HTML><HEAD>
<!--  ------------ DO NOT EDIT ---------- -->
<!--  Html file generated from "Index.m4" -->
<!--  ----------------------------------- -->
<TITLE>Anthony's WWW Images</TITLE>
}ifdef({INDEX},dnl
<BASE TARGET="pagemap">
)
</HEAD>

dnl --- Frame Format if possible ---
ifdef({DEFAULT},dnl
{<FRAMESET COLS="140,*">
<FRAME SRC="Images_Index.html">
<FRAME SRC="Images_Top.html" NAME="pagemap">
</FRAMESET>
<NOFRAMES>
})dnl

dnl --- Document Title ---
<BODY BGCOLOR="#66CDAA">
<NOBR>
ifdef({INDEX},dnl  INDEX
ifdef({BASIC},dnl with BASIC
<H4>  AIcons WWW
<BR><IMG SRC="space_10.gif" WIDTH=10 HEIGHT=1 ALT="  ">
         Images (v VERSION basic)
</H4>
,dnl                without BASIC
<H4>  AIcons WWW
<BR><IMG SRC="space_10.gif" WIDTH=10 HEIGHT=1 ALT="  ">
         Images (v VERSION)
</H4>
),dnl          not INDEX
<IMG SRC="Animation/aicons_anim.gif" ALT="[AIcons Symbol]"
     ALIGN="left" WIDTH=56 HEIGHT=50>

ifdef({TOP},dnl  TOP title
<H1>Anthony's WWW Images (Framed)
<BR>Version VERSION</H1>
,ifdef({EXT},dnl  EXT title
<H1>Anthony's WWW Images (No Preview)
<BR>Version VERSION</H1>
,dnl  other title
<H1>Anthony's WWW Images (AIcons VERSION)</H1>
<H3>Frameless browsers rule OK!''</H3>
))dnl

<BR CLEAR=all>
)dnl
</NOBR>

dnl --- General Links (in index) ---
ifdef({TOP},,dnl not TOP

ifdef({INDEX},dnl
<FONT SIZE="-1"><NOBR>
)dnl

dnl --- Parent Directory Link ---
<A HREF=".." TARGET="_top">
  <IMG SRC="blue_up.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  Up to Parent</A><BR>

dnl --- AIcons Source Library Link ---
<A HREF="http://www.cit.gu.edu.au/~anthony/icons/" TARGET="_top">
  <IMG SRC="blue_next.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  AIcon Library</A><BR>

dnl --- Mirror Link ---
<A HREF="http://www.cit.gu.edu.au/~anthony/icons/links_web.html">
  <IMG SRC="blue_next.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
ifdef({INDEX},dnl
  Mirrors</A><BR>
,dnl
  Mirrors of Anthony's WWW Images</A><BR>
)dnl

dnl --- Archive Link(s) ---
<A HREF="ARCHIVES/WWW_Images_ALL.tar.gz">
  <IMG SRC="blue_grab.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
ifdef({INDEX},dnl
  Archive</A> (GZip'ed Tar)<BR>
,dnl not INDEX
  Anthony's WWW Images Archive</A> (GZip'ed Tar)<BR>
<A HREF="ARCHIVES/WWW_Images_Basic.tar.gz">
  <IMG SRC="blue_grab.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  Basic Image Set (top level and balls) </A> (GZip'ed Tar)<BR>
<A HREF="ARCHIVES/WWW_Images_Icons.tar.gz">
  <IMG SRC="blue_grab.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  File Indexing Icons </A> (GZip'ed Tar)<BR>
<A HREF="ARCHIVES/WWW_Images_Buttons.tar.gz">
  <IMG SRC="blue_grab.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  Just the Button Images</A> (GZip'ed Tar)<BR>
<A HREF="ARCHIVES/WWW_Images_Math.tar.gz">
  <IMG SRC="blue_grab.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  Mathematical Equation Symbols</A> (GZip'ed Tar)<BR>
)dnl

dnl --- Welcome Page and readme file ---
ifdef({INDEX},dnl
<A HREF="Images_Top.html">
  <IMG SRC="blue_readme.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  Welcome Page</A><BR>
)dnl

<A HREF="README">
  <IMG SRC="blue_readme.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  README file</A><BR>

<A HREF="./">
  <IMG SRC="blue_dir.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
ifdef({INDEX},dnl
  Directory</A><BR>
,dnl
  Directory Listing</A><BR>
)dnl

<P>
ifdef({INDEX},dnl
</NOBR></FONT>
)dnl
)dnl not TOP


dnl --- External Access Limited WARNING ---
ifdef({EXT},dnl
{<HR>
<CENTER><H3>WARNING -- Limited Access -- WARNING</H3></CENTER>
Due to the overwhelming demand for these Images, our server is no longer
able to provide ``Example Image pages'' (the boss forbids it!) to the world
at large. <P>

Example Image Pages are however available in the various mirrors.  You can
also download the image archive using the links below. <P>

This document is automatically displayed to non-local users thanks to
the Apatche Web Server (v1.2 and above) excellent error redirection
capabilities. Webmasters downloading this images library can look at
``<A HREF="LocalOnly.htaccess">Local Users Only htaccess</A>'' file
within the archive.<P>

For discussions about this Library you may like to subscribe to the AIcons
mailing list &lt;aicons@cit.gu.edu.au&gt; or for just the announcements only
&lt;aicons_announce@cit.gu.edu.au&gt;. To subscribe send a ``subscribe list''
line in the body of an email message to &lt;<A
HREF="mailto:majordomo@cit.gu.edu.au">majordomo@cit.gu.edu.au</A>&gt; <P>

<FONT SIZE="+2">Apologies for the Inconvenience</FONT> -- 
<I>Anthony Thyssen</I> -- 15 July 1997<P>
<HR>
})

dnl --- Main Document Links (index) ---
ifdef({DEFAULT},dnl DEFAULT
<H2>Display WWW Icons Documents</H2>
<BLOCKQUOTE>
)dnl
ifdef({INDEX},dnl   INDEX
<FONT SIZE="-2"><NOBR>
<P>
)
ifdef({DEFAULT}, {define({DOIT})}dnl  
,{ifdef({INDEX}, {define({DOIT})})})dnl
ifdef({DOIT},{dnl    DEFAULT or INDEX
<B>General</B><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Images_Arrows.html">         Arrows</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Images_Color.html">          Misc Color</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Images_Bitmaps.html">        Misc Bitmaps</A><BR>
<P>

<B>Listing</B><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Icons/Images.html">   File Index Icons</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Balls/Images.html">          Balls</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Squares/Images.html">        Squares</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Diamonds/Images.html">       Diamonds</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Symbols/Images.html">        Symbols/Markers</A><BR>
<P>

}ifdef({BASIC},,{dnl  not BASIC (which INDEX includes)
<B>Lines</B><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Lines/Images.html">          Plain/Textured</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="FancyLines/Images.html">     Fancy Lines</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="ThreadLines/Images.html">    Threaded Lines</A><BR>
<P>

<B>Buttons</B><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Buttons/Images_Arrows.html"> Button Arrows</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Buttons/Images1.html">       Buttons A-D</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Buttons/Images2.html">       Buttons E-H</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Buttons/Images3.html">       Buttons I-Q</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Buttons/Images4.html">       Buttons R-Z</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Buttons/Images_Anim.html">   Button Animated</A><BR>
<P>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="ButSmall/Images.html">       Small Buttons</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="RButtons/Images.html">       Rounded Buttons</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="LatexHtml/Images.html">      Latex-to-Html</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Actions/Images.html">        Action Buttons</A><BR>
<P>

<B>Miscellaneous</B><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Math/Images.html">           Mathematical Symbols</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Std/Images.html">            Std Title Images</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Box/Images.html">            Box DIY Pieces</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Table/Images.html">          Table Framing Images</A><BR>
<IMG SRC="Balls/b_blue.gif" ALT="*" WIDTH=14 HEIGHT=14 ALIGN="top">
    <A HREF="Animation/Images.html">      Animated GIFs</A><BR>
<P>
}))dnl

ifdef({DEFAULT},dnl DEFAULT
</BLOCKQUOTE><HR><P>
)dnl
ifdef({INDEX},dnl INDEX
</NOBR></FONT>
)

dnl --- Main Welcome (top) ---
undefine({DOIT})dnl
ifdef({DEFAULT}, {define({DOIT})}dnl  
,{ifdef({TOP},   {define({DOIT})})})dnl
ifdef({DOIT},{dnl
<H2>Welcome</H2>

The goal of this Image library is to...

<CENTER><B> `` Provide a BASE set of images for WWW use '' </B></CENTER>

It is NOT a be all and end all collection of WWW images. I let the huge number
of other WWW image libraries, attempt and fail to do this.  Instead this is a
starting set of images, that starting web sites can use and expand from. <P>

In accordance with this goal I do not provide banners, logos or any background
pattern images. Any such image I supply would rarely be used by a new web site
as these one of the things which each web site uses to make their site unique
and different from everyone elses. <P>

Also since it was created the library contents has not changed in any major
way. Only the occasional small group of images have been added due to general
need. <P>

<H2>Source Library</H2>

All the images in this directory tree have been converted to the GIF format
from the source library, <A HREF="http://www.cit.gu.edu.au/~anthony/icons/"
TARGET="_top"><B> Anthony's Icon Library </B></A>.  Please feel free to take
a visit and download any and all icons you find there. WARNING: this library
is for X Window users, as such images are stored in X Window formats which
is not directly suitable for WWW or PC use.  (See ``<A
HREF="http://www.cit.gu.edu.au/~anthony/icons/pc_x_images.shtml" >PC Image
Conversions</A>'' for information on using this on PCs). <P>

The ``ReadMe'' file within each sub-directory lists any known original
source of images or image sets, in that directory, if known. <P>

<H2>Downloading</H2>

Netscape users can download a displayed image by pressing the rightmost mouse
button over the image so that a menu appears. Users on Macs and PC's do the
same but hold the (only or one) button for a couple of seconds.  You can then
select the ``Save Image'' option in this popup menu. For other client users,
some of the images are linked so just selecting the image will (depending on
your client) download the image to a local viewer. <P>
},{ifdef({EXT}, {define({DOIT})})})dnl

ifdef({DOIT},{dnl
To make downloading these icons easier, I have provided the following
GZIp'ed Tar Archives of Anthony's WWW Images...
<BLOCKQUOTE>
<A HREF="ARCHIVES/WWW_Images_ALL.tar.gz">
  <IMG SRC="blue_grab.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  All WWW Images</A><BR>
<A HREF="ARCHIVES/WWW_Images_Basic.tar.gz">
  <IMG SRC="blue_grab.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  Basic Image Set</A> (Top Level and Balls Images)<BR>
<A HREF="ARCHIVES/WWW_Images_Icons.tar.gz">
  <IMG SRC="blue_grab.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  File Indexing Icons</A><BR>
<A HREF="ARCHIVES/WWW_Images_Buttons.tar.gz">
  <IMG SRC="blue_grab.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  Just the Button Images</A><BR>
<A HREF="ARCHIVES/WWW_Images_Math.tar.gz">
  <IMG SRC="blue_grab.gif" WIDTH=24 HEIGHT=24
       ALIGN="absmiddle" ALT="" BORDER=0>
  Mathematical Equation Symbols</A><BR>
</BLOCKQUOTE><P>

PC Users can look at 
``<A HREF="http://www.cit.gu.edu.au/~anthony/icons/pc_gzip_tar.shtml">
De-Archiving GZip'ed Tar Archives on PCs</A>'' for information on how to
handle the above archives. Also in 
``<A HREF="http://www.cit.gu.edu.au/~anthony/icons/pc_x_images.shtml">
PC Image Conversions</A>'' is a summery for converting X window and GIF
images for PC use. <P>

<B>For Mirror Coordinators</B> I have written a small shell script called
<A HREF="http://www.cit.gu.edu.au/~anthony/icons/support/images_mirror">
<B>"images_mirror"</B></A> which uses the lynx WWW client to download the
above tar file and automatically unpack it. This will allow you to set up a
`cron job' to automatically download and un-tar these images on a regular
basis for use on your server. The script is VERY simple and you should have
no problem modifying it if necessary. <P>
})dnl

ifdef({INDEX},dnl
<FONT SIZE="-2">
)dnl
<HR><ADDRESS><NOBR>
ifdef({DOIT},dnl
<A HREF="http://www.anybrowser.org/campaign/"
  ><IMG SRC="http://www.anybrowser.org/campaign/bvgraphics/globe-trans.gif"
        WIDTH="147" HEIGHT="42" ALT="Use Any Browser" BORDER="0" ALIGN="right">
  </A>
)dnl
{Created: 30 May 1995<BR>
Updated: 27 July 2000<BR>
<A HREF="http://www.cit.gu.edu.au/~anthony/anthony.html" TARGET="_top"
    >Anthony Thyssen</A>,
    &lt;<A HREF="http://www.cit.gu.edu.au/~anthony/mail.shtml" TARGET="_top"
    >anthony@cit.gu.edu.au</A>&gt;
</NOBR></ADDRESS>
}ifdef({INDEX},dnl
</FONT>
)dnl
ifdef({DEFAULT},dnl
</BODY></NOFRAMES></HTML>
,dnl
</BODY></HTML>
)dnl
