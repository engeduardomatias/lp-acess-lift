$port = 8000
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Start()
Write-Host "============================================="
Write-Host "Servidor Local Iniciado com Sucesso!"
Write-Host "Acesse o projeto em: http://localhost:$port/"
Write-Host "Pressione Ctrl+C no terminal para parar o servidor."
Write-Host "============================================="

try {
    while ($listener.IsListening) {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response

        # Decode path to handle URL encoding (e.g. spaces as %20) without requiring System.Web
        $rawPath = [System.Uri]::UnescapeDataString($request.Url.LocalPath)
        
        # If the web request is just /, serve index.html
        if ($rawPath -eq "/" -or $rawPath -eq "/index.html") {
            $filePath = Join-Path $PSScriptRoot "index.html"
        } else {
            $relativePath = $rawPath.TrimStart('/')
            $filePath = Join-Path $PSScriptRoot $relativePath
        }

        # Resolve path to prevent directory traversal
        $resolvedPath = [System.IO.Path]::GetFullPath($filePath)
        $rootPath = [System.IO.Path]::GetFullPath($PSScriptRoot)

        if ($resolvedPath.StartsWith($rootPath) -and (Test-Path $resolvedPath -PathType Leaf)) {
            $bytes = [System.IO.File]::ReadAllBytes($resolvedPath)
            
            # Determine mime type
            $ext = [System.IO.Path]::GetExtension($resolvedPath).ToLower()
            $contentType = switch ($ext) {
                ".html" { "text/html; charset=utf-8" }
                ".css"  { "text/css" }
                ".js"   { "application/javascript" }
                ".png"  { "image/png" }
                ".jpg"  { "image/jpeg" }
                ".jpeg" { "image/jpeg" }
                ".gif"  { "image/gif" }
                ".svg"  { "image/svg+xml" }
                ".ico"  { "image/x-icon" }
                default { "application/octet-stream" }
            }

            $response.ContentType = $contentType
            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
            Write-Host "$(Get-Date -Format 'HH:mm:ss') - 200 - $rawPath"
        } else {
            $response.StatusCode = 404
            $errBytes = [System.Text.Encoding]::UTF8.GetBytes("Arquivo Nao Encontrado / File Not Found")
            $response.OutputStream.Write($errBytes, 0, $errBytes.Length)
            Write-Host "$(Get-Date -Format 'HH:mm:ss') - 404 - $rawPath"
        }
        $response.OutputStream.Close()
    }
} catch {
    Write-Host "Erro no servidor: $_"
} finally {
    $listener.Stop()
}
