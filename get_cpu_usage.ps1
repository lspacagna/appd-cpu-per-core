while ($true)
{
    $cores = (Get-WmiObject -Query "select Name, PercentProcessorTime from Win32_PerfFormattedData_PerfOS_Processor")
    $cores | foreach-object { write-host "name=Hardware Resources|CPU Per Core | CPU Core$($_.Name) %,value=$($_.PercentProcessorTime)" };
    Start-Sleep -m 1000
}
