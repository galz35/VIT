# RBAC Verification Script
Write-Host "=== RBAC VERIFICATION ===" -ForegroundColor Cyan

# Test Admin Login
Write-Host "`n1. Admin Login..." -ForegroundColor Yellow
$body = @{correo="admin@clarity.demo";password="123456"} | ConvertTo-Json
$admin = Invoke-RestMethod -Uri "http://localhost:3000/api/auth/login" -Method POST -Body $body -ContentType "application/json" -UseBasicParsing
Write-Host "   SUCCESS: $($admin.user.nombre)" -ForegroundColor Green

# Test Gerente Login
Write-Host "`n2. Gerente TI Login..." -ForegroundColor Yellow
$body = @{correo="gerente.ti@clarity.demo";password="123456"} | ConvertTo-Json
$gerente = Invoke-RestMethod -Uri "http://localhost:3000/api/auth/login" -Method POST -Body $body -ContentType "application/json" -UseBasicParsing
Write-Host "   SUCCESS: $($gerente.user.nombre) - Role: $($gerente.user.rolGlobal)" -ForegroundColor Green

# Test Coordinador Login
Write-Host "`n3. Coordinador Login..." -ForegroundColor Yellow
$body = @{correo="coordinador@clarity.demo";password="123456"} | ConvertTo-Json
$coord = Invoke-RestMethod -Uri "http://localhost:3000/api/auth/login" -Method POST -Body $body -ContentType "application/json" -UseBasicParsing
Write-Host "   SUCCESS: $($coord.user.nombre)" -ForegroundColor Green

# Test Admin Organigrama Access
Write-Host "`n4. Admin Organigrama Access..." -ForegroundColor Yellow
$headers = @{Authorization="Bearer $($admin.access_token)"}
$org = Invoke-RestMethod -Uri "http://localhost:3000/api/admin/organigrama" -Headers $headers -UseBasicParsing
Write-Host "   SUCCESS: Found $($org.Count) root nodes" -ForegroundColor Green

# Test Gerente Admin Access (should fail)
Write-Host "`n5. Gerente Admin Access (should fail)..." -ForegroundColor Yellow
try {
    $headers = @{Authorization="Bearer $($gerente.access_token)"}
    Invoke-RestMethod -Uri "http://localhost:3000/api/admin/usuarios" -Headers $headers -UseBasicParsing -ErrorAction Stop
    Write-Host "   FAILED: Should be blocked" -ForegroundColor Red
} catch {
    Write-Host "   SUCCESS: Correctly blocked" -ForegroundColor Green
}

Write-Host "`n=== TESTS COMPLETE ===" -ForegroundColor Cyan
