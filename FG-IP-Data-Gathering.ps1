# Define the input and output file paths
$inputFile = .\affected_ips.txt  # Path to your txt file containing IP addresses
$outputFile = .\output.csv      # Path to the output CSV file

# Define ipinfo.io api key
$apikey = <input your key here>

# Function to resolve DNS record
function Get-DnsRecord {
    param (
        [string]$ip
    )
    try {
        $dnsRecord = [System.Net.Dns]::GetHostEntry($ip)
        return $dnsRecord.HostName
    }
    catch {
        return "DNS not found"
    }
}

# Function to get geolocation information using ipinfo.io API
function Get-Geolocation {
    param (
        [string]$ip
    )
    try {
        $url = "http://ipinfo.io/$ip/json?$apikey"
        $response = Invoke-RestMethod -Uri $url -Method Get
        return $response.city + ", " + $response.region + ", " + $response.country
    }
    catch {
        return "Geolocation not found"
    }
}

# Read the IP addresses from the input file
$ipAddresses = Get-Content -Path $inputFile

# Prepare an array to store results
$results = @()

# Loop through each IP address, get the DNS and location information
foreach ($ip in $ipAddresses) {
    $dns = Get-DnsRecord -ip $ip
    $location = Get-Geolocation -ip $ip

    # Create an object with the IP, DNS, and location
    $results += [PSCustomObject]@{
        IPAddress = $ip
        DNS = $dns
        Location = $location
    }
}

# Export the results to CSV
$results | Export-Csv -Path $outputFile -NoTypeInformation

Write-Host "Results exported to $outputFile"
