package ONVIF::Analytics::Types::PTZPresetTourPresetDetail;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %PresetToken_of :ATTR(:get<PresetToken>);
my %Home_of :ATTR(:get<Home>);
my %PTZPosition_of :ATTR(:get<PTZPosition>);
my %TypeExtension_of :ATTR(:get<TypeExtension>);

__PACKAGE__->_factory(
    [ qw(        PresetToken
        Home
        PTZPosition
        TypeExtension

    ) ],
    {
        'PresetToken' => \%PresetToken_of,
        'Home' => \%Home_of,
        'PTZPosition' => \%PTZPosition_of,
        'TypeExtension' => \%TypeExtension_of,
    },
    {
        'PresetToken' => 'ONVIF::Analytics::Types::ReferenceToken',
        'Home' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'PTZPosition' => 'ONVIF::Analytics::Types::PTZVector',
        'TypeExtension' => 'ONVIF::Analytics::Types::PTZPresetTourTypeExtension',
    },
    {

        'PresetToken' => 'PresetToken',
        'Home' => 'Home',
        'PTZPosition' => 'PTZPosition',
        'TypeExtension' => 'TypeExtension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::PTZPresetTourPresetDetail

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PTZPresetTourPresetDetail from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * PresetToken


=item * Home


=item * PTZPosition


=item * TypeExtension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::PTZPresetTourPresetDetail
   # One of the following elements.
   # No occurance checks yet, so be sure to pass just one...
   PresetToken => $some_value, # ReferenceToken
   Home =>  $some_value, # boolean
   PTZPosition =>  { # ONVIF::Analytics::Types::PTZVector
     PanTilt => ,
     Zoom => ,
   },
   TypeExtension =>  { # ONVIF::Analytics::Types::PTZPresetTourTypeExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

