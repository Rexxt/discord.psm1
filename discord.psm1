function Get-DiscordOnline() {
    # https://stackoverflow.com/questions/20259251/powershell-script-to-check-the-status-of-a-url
    $req = Invoke-WebRequest -uri "https://discord.com/"
    if ($req.StatusCode -eq 200) {
        return $true
    } else {
        return $false
    }
}