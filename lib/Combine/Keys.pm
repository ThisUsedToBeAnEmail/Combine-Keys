package Combine::Keys;

use strict;
use warnings;

our $VERSION = '0.05';
require XSLoader;
XSLoader::load('Combine::Keys', $VERSION);

use Exporter qw(import);

our @EXPORT_OK = qw(
    ckeys
    combine_keys
);

our %EXPORT_TAGS;
$EXPORT_TAGS{all} = [@EXPORT_OK];

sub combine_keys {
    return @{ ckeys([@_]) };
}

=head1 NAME

Combine::Keys - keys on multiple hash references!

=head1 VERSION

Version 0.05

=cut

=head1 SYNOPSIS

Quick summary of what the module does.

    use Combine::Keys qw/combine_keys/;

    for ( combine_keys($hash1, \%hash2, { e => 'f' }) ) {  
        # a b c
        .... magic ---
    } 

=head1 EXPORT

=head1 SUBROUTINES/METHODS

=head2 combine_keys

Takes an Array of hash references and returns an array of keys.

=head2 ckeys

Takes an Array reference of hashes and returns an array reference of keys.

=cut

=head1 AUTHOR

Robert Acock, C<< <thisusedtobeanemail at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-combine-keys at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Combine-Keys>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Combine::Keys

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Combine-Keys>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Combine-Keys>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Combine-Keys>

=item * Search CPAN

L<http://search.cpan.org/dist/Combine-Keys/>

=back

=head1 ACKNOWLEDGEMENTS

=head1 LICENSE AND COPYRIGHT

Copyright 2017 Robert Acock.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=cut

1; # End of Combine::Keys
