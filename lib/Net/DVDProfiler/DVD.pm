package Net::DVDProfiler::DVD;

sub new {
  my $ref = shift;
  my $class = ref( $ref ) || $ref;

  my $self = bless {
    title => undef,
    upc => undef,
    @_
  }, $class;

  return $self;
}

sub title {
  return $_[0]->{title};
}

sub upc {
  return $_[0]->{upc};
}
1;

__END__
=pod

=head1 NAME

Net-DVDProfiler-DVD - A simple object that represents a DVD on DVDProfiler.

=head1 DESCRIPTION

A simple object that represents a DVD on DVDProfiler. This object will probably be only used by the Net::DVDProfiler module. The most important aspect of this module is its accessors, which you will need.

=head1 SYNOPSIS

    use Net::DVDProfiler::DVD;

    my $dvd = new Net::DVDProfiler::DVD(
        title => 'DVD Title',
        upc => 'UPC Symbol'
    );
    
    print $dvd->title() . "\n";
    
=over 4

=item B<new>

    my $dvd = new Net::DVDProfiler::DVD();
    
Instantiates an object with which to perform further requests. This method will probably not be used.

=item B<title>

    $dvd->title();
    
Returns the title of the DVD.

=item B<upc>

    $dvd->upc();
    
Returns the upc of the DVD.

=back

=head1 AUTHOR

<a href="http://ejohn.org/">John Resig</a> E<lt>jeresig@gmail.comE<gt>

=head1 DISCLAIMER

This application utilitizes screen-scraping techniques, which are very fickle and susceptable to changes.

=head1 COPYRIGHT

Copyright 2005 John Resig.

=cut