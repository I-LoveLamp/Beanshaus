$i = 0
$content = Invoke-WebRequest -Uri "http://www.msn.com/en-gb/?ocid=iehp&AR=1" -UseBasicParsing
$rawContent = $content.RawContent
$slam = $rawContent | Select-String "slam" -AllMatches
$slams = $rawContent| Select-String "slams" -AllMatches
$slammed = $rawContent| Select-String "slammed" -AllMatches

$slam.matches.Count
$slams.matches.Count
$slammed.matches.Count
