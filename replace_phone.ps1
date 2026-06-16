$content = [System.IO.File]::ReadAllText("code.html", [System.Text.Encoding]::UTF8)
# Replace (81) 99800-9403 with (81) 97335-0593
$content = $content.Replace("(81) 99800-9403", "(81) 97335-0593")
# Replace 5581998009403 with 5581973350593
$content = $content.Replace("5581998009403", "5581973350593")
[System.IO.File]::WriteAllText("code.html", $content, [System.Text.Encoding]::UTF8)
Write-Host "Phone numbers replaced successfully!"
