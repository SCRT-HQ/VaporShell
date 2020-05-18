# Add-VSACMPCACertificateAuthoritySubject

## SYNOPSIS
Adds an AWS::ACMPCA::CertificateAuthority.Subject resource property to the template.
ASN1 subject for the certificate authority.

## SYNTAX

```
Add-VSACMPCACertificateAuthoritySubject [[-Country] <Object>] [[-Organization] <Object>]
 [[-OrganizationalUnit] <Object>] [[-DistinguishedNameQualifier] <Object>] [[-State] <Object>]
 [[-CommonName] <Object>] [[-SerialNumber] <Object>] [[-Locality] <Object>] [[-Title] <Object>]
 [[-Surname] <Object>] [[-GivenName] <Object>] [[-Initials] <Object>] [[-Pseudonym] <Object>]
 [[-GenerationQualifier] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ACMPCA::CertificateAuthority.Subject resource property to the template.
ASN1 subject for the certificate authority.

## PARAMETERS

### -Country
Two-digit code that specifies the country in which the certificate subject located.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-country
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Organization
Legal name of the organization with which the certificate subject is affiliated.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-organization
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OrganizationalUnit
A subdivision or unit of the organization such as sales or finance with which the certificate subject is affiliated.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-organizationalunit
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DistinguishedNameQualifier
Disambiguating information for the certificate subject.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-distinguishednamequalifier
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -State
State in which the subject of the certificate is located.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-state
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CommonName
Fully qualified domain name FQDN associated with the certificate subject.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-commonname
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SerialNumber
The certificate serial number.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-serialnumber
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Locality
The locality such as a city or town in which the certificate subject is located.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-locality
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Title
A personal title such as Mr.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-title
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Surname
Family name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-surname
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GivenName
First name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-givenname
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Initials
Concatenation that typically contains the first letter of the GivenName, the first letter of the middle name if one exists, and the first letter of the SurName.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-initials
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Pseudonym
Typically a shortened version of a longer GivenName.
For example, Jonathan is often shortened to John.
Elizabeth is often shortened to Beth, Liz, or Eliza.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-pseudonym
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GenerationQualifier
Typically a qualifier appended to the name of an individual.
Examples include Jr.
for junior, Sr.
for senior, and III for third.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-generationqualifier
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ACMPCA.CertificateAuthority.Subject
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html)

