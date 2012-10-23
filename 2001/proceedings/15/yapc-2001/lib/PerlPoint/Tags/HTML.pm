# pp2html tags

package PerlPoint::Tags::HTML;

$VERSION = sprintf("%d.%02d", q/$Revision: 1.1.1.1 $/ =~ /(\d+)\.(\d+)/);

use base qw(PerlPoint::Tags);
use strict;

use PerlPoint::Constants qw(:tags);
use vars qw(%tags %sets);

%tags = (
            A => {
                   'options' => TAGS_MANDATORY,
                   'body'    => TAGS_OPTIONAL,
               },
            BOXCOLOR => { # now obsolete
                   'options' => TAGS_DISABLED,
                   'body'    => TAGS_MANDATORY,
               },

            BOXTEXT => { # now obsolete
                   'options' => TAGS_DISABLED,
                   'body'    => TAGS_MANDATORY,
               },

            BOXCOLORS => {
                   'options' => TAGS_MANDATORY,
                   'body'    => TAGS_DISABLED,
               },

            SUP => {
                   'options' => TAGS_DISABLED,
                   'body'    => TAGS_MANDATORY,
               },

            SUB => {
                   'options' => TAGS_DISABLED,
                   'body'    => TAGS_MANDATORY,
               },

            U => {
                   'options' => TAGS_DISABLED,
                   'body'    => TAGS_MANDATORY,
               },

            L => {
                   'options' => TAGS_MANDATORY,
                   'body'    => TAGS_MANDATORY,
               },

            PAGEREF => {
                   'options' => TAGS_MANDATORY,
                   'body'    => TAGS_DISABLED,
               },

            SECTIONREF => {
                   'options' => TAGS_MANDATORY,
                   'body'    => TAGS_DISABLED,
               },

            XREF => {
                   'options' => TAGS_MANDATORY,
                   'body'    => TAGS_MANDATORY,
               },

            E => {
                   'options' => TAGS_DISABLED,
                   'body'    => TAGS_MANDATORY,
               },

            F => {
                   'options' => TAGS_OPTIONAL,
                   'body'    => TAGS_MANDATORY,
               },

            X => {
                   'options' => TAGS_OPTIONAL,
                   'body'    => TAGS_MANDATORY,
               },

            LINE_BREAK => {
                   'options' => TAGS_DISABLED,
                   'body'    => TAGS_DISABLED,
               },

            BR => {
                   'options' => TAGS_DISABLED,
                   'body'    => TAGS_DISABLED,
               },

            HR => {
                   'options' => TAGS_DISABLED,
                   'body'    => TAGS_DISABLED,
               },

  
);

1;

__END__

=head1 NAME

B<PerlPoint::Tags::HTML> - PerlPoint tag set used by pp2html

=head1 SYNOPSYS

 # declare tags used by pp2html
 use PerlPoint::Tags::HTML;

=head1 DESCRIPTION

This module declares PerlPoint tags used by C<pp2html>. Tag
declarations are used by the parser to determine if a used
tag is valid, if it needs options, if it needs a body and
so on. Please see B<PerlPoint::Tags> for a detailed
description of tag declaration.

Every PerlPoint translator willing to handle the tags of
this module can declare this by using the module in the
scope where it built the parser object.

 # declare basic tags
 use PerlPoint::Tags::HTML

 # load parser module
 use PerlPoint::Parser;

 ...

 # build parser
 my $parser=new PerlPoint::Parser(...);

 ...

=head1 TAGS

=over 4

=item B<\A>{name="text"}

Anchor tag for setting marks which can be used in cross references etc..

=item B<\L>{url="target"}<text of hyperlink>

Link tag for defining hyperlinks to other HTML pages.

=item B<\BOXCOLORS>{fg="fg_color" bg="bg_color"}

This is used for defining the foreground and background colors of text boxes.

=item B<\SUP><superscript>

Formating tag for a superscript.

=item B<\SUB><subrscript>

Formating tag for a superscript.

=item B<\U><underlined>

Formating tag for underlined text.

=item B<\E><html escape>

Formating tag for HTML escape characters, e.g. \EE<lt>gtE<gt>

=item B<\F>{color="color" size=5 face="arial"}<text with special attributes>

Formating tag for text.

=item B<\PAGEREF>{name="target"}

Cross reference to a page (slide), using the I<page number> of this page as the text
of this reference.

=item B<\SECTIONREF>{name="target"}

Cross reference to a page (slide), using the I<header> of this page as the text
of this reference.

=item B<\XREF>{name="target"}<text of cross reference>

Tag for a cross reference. The target shoud be defined by an B<\A>-Tag.

=item B<\X><text for index>

=item B<\X>{mode=index_only}<text for index only>

Tag for an index entry.

=item B<\HR>

Tag for a horizontal line.

=item B<\BR>

=item B<\LINE_BREAK>

Tag for a line break.


=back

=head1 TAG SETS

No sets are currently defined.

=head1 SEE ALSO

=over 4

=item B<PerlPoint::Tags>

The tag declaration base "class".

=item B<PerlPoint::Tags::Basic>

Basic Tags imported by C<pp2html>.

=back

=head1 AUTHOR

Lorenz Domke <logenz.domke@gmx.de>


=cut

$Log: HTML.pm,v $
Revision 1.1.1.1  2004/06/12 15:13:37  eric
yapceurope web site initial import

Revision 1.1  2001/06/14 12:00:56  lorenz
Initial revision

