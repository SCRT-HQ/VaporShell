# Watch-Stack

## SYNOPSIS
Watches Stack Events as they happen.
Colorizes events based on event type.

## SYNTAX

```
Watch-Stack [-StackName] <String[]> [-InNewWindow] [-IncludeBlankResourceStatusReasons] [-RefreshRate <Int32>]
 [-ProfileName <String>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -StackName
{{ Fill StackName Description }}

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: StackId

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -InNewWindow
WINDOWS ONLY (For now).
Watch events in a new PowerShell window.
So you can continue working in your current console.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeBlankResourceStatusReasons
If passed/set to $true, this will also output CREATE_IN_PROGRESS events that do not include a ResourceStatusReason.
All other ResourceStatuses

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RefreshRate
The rate in seconds that you'd like the event list to poll for new events.
Defaults to 2.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 2
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProfileName
The name of the configuration profile to deploy the stack with.
Defaults to $env:AWS_PROFILE, if set.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $env:AWS_PROFILE
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
