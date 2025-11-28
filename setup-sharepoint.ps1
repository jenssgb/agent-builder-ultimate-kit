<#
.SYNOPSIS
    Automated SharePoint setup for Agent Builder Demo Kit
.DESCRIPTION
    Creates SharePoint site structure and uploads all mock data files from this repository
.NOTES
    Prerequisites:
    - Clone this repository locally
    - Run script from repository root directory
    - Requires SharePoint admin permissions
#>

# Script must run from repo root
if (-not (Test-Path ".\01-sharepoint-files-agent")) {
    Write-Host "❌ Error: Script must run from repository root directory!" -ForegroundColor Red
    Write-Host "Please cd to the agent-builder-demo-cases folder and try again." -ForegroundColor Yellow
    exit 1
}

Write-Host @"
╔════════════════════════════════════════════════════════════════╗
║  Agent Builder Ultimate Kit - SharePoint Setup                ║
║  Automated deployment of demo mock data to SharePoint         ║
╚════════════════════════════════════════════════════════════════╝
"@ -ForegroundColor Cyan

# Get tenant information
Write-Host "`nStep 1: Tenant Configuration" -ForegroundColor Yellow
Write-Host "─────────────────────────────" -ForegroundColor Gray
$TenantName = Read-Host "Enter your tenant name (e.g., 'contoso' for contoso.sharepoint.com)"
$SiteName = Read-Host "Enter site name for demo hub (default: AgentBuilderDemo)" 
if ([string]::IsNullOrWhiteSpace($SiteName)) { $SiteName = "AgentBuilderDemo" }

# Build URLs
$TenantUrl = "https://$TenantName-admin.sharepoint.com"
$SiteUrl = "https://$TenantName.sharepoint.com/sites/$SiteName"

Write-Host "`nConfiguration:" -ForegroundColor Cyan
Write-Host "  Tenant:     $TenantName" -ForegroundColor White
Write-Host "  Admin URL:  $TenantUrl" -ForegroundColor White
Write-Host "  Site URL:   $SiteUrl" -ForegroundColor White

$confirm = Read-Host "`nProceed with setup? (Y/N)"
if ($confirm -ne 'Y' -and $confirm -ne 'y') {
    Write-Host "Setup cancelled." -ForegroundColor Yellow
    exit 0
}

# Check if PnP.PowerShell is installed
Write-Host "`nStep 2: Checking dependencies..." -ForegroundColor Yellow
Write-Host "─────────────────────────────────" -ForegroundColor Gray

if (-not (Get-Module -ListAvailable -Name PnP.PowerShell)) {
    Write-Host "Installing PnP.PowerShell module..." -ForegroundColor Yellow
    Install-Module -Name PnP.PowerShell -Scope CurrentUser -Force -AllowClobber
    Write-Host "✓ PnP.PowerShell installed" -ForegroundColor Green
} else {
    Write-Host "✓ PnP.PowerShell already installed" -ForegroundColor Green
}

Import-Module PnP.PowerShell

# Connect to tenant admin
Write-Host "`nStep 3: Connecting to SharePoint..." -ForegroundColor Yellow
Write-Host "─────────────────────────────────────" -ForegroundColor Gray
Write-Host "Please sign in with your SharePoint admin account..." -ForegroundColor Gray

try {
    Connect-PnPOnline -Url $TenantUrl -Interactive -ErrorAction Stop
    Write-Host "✓ Connected to tenant admin" -ForegroundColor Green
} catch {
    Write-Host "❌ Failed to connect: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

# Check if site exists, create if not
Write-Host "`nStep 4: Setting up SharePoint site..." -ForegroundColor Yellow
Write-Host "────────────────────────────────────" -ForegroundColor Gray

$site = Get-PnPTenantSite -Url $SiteUrl -ErrorAction SilentlyContinue

if (-not $site) {
    Write-Host "Creating new site: $SiteName" -ForegroundColor Yellow
    try {
        New-PnPSite -Type TeamSite -Title "Agent Builder Demo Hub" -Alias $SiteName -IsPublic -ErrorAction Stop
        Write-Host "✓ Site created successfully" -ForegroundColor Green
        Write-Host "  Waiting for site provisioning (10 seconds)..." -ForegroundColor Gray
        Start-Sleep -Seconds 10
    } catch {
        Write-Host "❌ Failed to create site: $($_.Exception.Message)" -ForegroundColor Red
        Disconnect-PnPOnline
        exit 1
    }
} else {
    Write-Host "✓ Site already exists" -ForegroundColor Green
}

# Disconnect from admin, connect to site
Disconnect-PnPOnline
Write-Host "  Connecting to demo site..." -ForegroundColor Gray

try {
    Connect-PnPOnline -Url $SiteUrl -Interactive -ErrorAction Stop
    Write-Host "✓ Connected to demo site" -ForegroundColor Green
} catch {
    Write-Host "❌ Failed to connect to site: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

# Define folder structure with relative paths from repo root
$folders = @(
    @{ Name = "01-Employee-Docs"; Path = "01-sharepoint-files-agent\mock-data" },
    @{ Name = "02-Meeting-Transcripts"; Path = "02-teams-meetings-chats-agent\mock-data" },
    @{ Name = "03-Email-Archives"; Path = "03-email-intelligence-agent\mock-data" },
    @{ Name = "06-Compliance-Docs"; Path = "06-scoped-source-agent\mock-data" },
    @{ Name = "08-Azure-DevOps-Docs"; Path = "08-azure-devops-connector-agent\mock-data" },
    @{ Name = "13-Sales-Data"; Path = "13-data-analysis-agent\mock-data" },
    @{ Name = "14-Marketing-Assets"; Path = "14-marketing-content-agent\mock-data" },
    @{ Name = "15-Combined-Knowledge"; Path = "15-all-features-showcase-agent\mock-data" }
)

Write-Host "`nStep 5: Uploading mock data files..." -ForegroundColor Yellow
Write-Host "─────────────────────────────────────" -ForegroundColor Gray

$totalFiles = 0
$failedFiles = 0
$stats = @()

foreach ($folder in $folders) {
    Write-Host "`n📁 $($folder.Name)" -ForegroundColor Cyan
    
    # Create folder in SharePoint
    try {
        Add-PnPFolder -Name $folder.Name -Folder "Shared Documents" -ErrorAction Stop | Out-Null
        Write-Host "   ✓ Folder created" -ForegroundColor Green
    } catch {
        if ($_.Exception.Message -like "*already exists*") {
            Write-Host "   ℹ Folder already exists" -ForegroundColor DarkGray
        } else {
            Write-Host "   ⚠ Warning: $($_.Exception.Message)" -ForegroundColor Yellow
        }
    }
    
    # Get local files (use current directory as base)
    $localPath = Join-Path $PSScriptRoot $folder.Path
    
    if (-not (Test-Path $localPath)) {
        Write-Host "   ⚠ Path not found: $localPath" -ForegroundColor DarkYellow
        $stats += @{ Folder = $folder.Name; Files = 0; Status = "Path not found" }
        continue
    }
    
    $files = Get-ChildItem -Path $localPath -File
    
    if ($files.Count -eq 0) {
        Write-Host "   ⚠ No files found" -ForegroundColor DarkYellow
        $stats += @{ Folder = $folder.Name; Files = 0; Status = "No files" }
        continue
    }
    
    Write-Host "   Uploading $($files.Count) files..." -ForegroundColor Gray
    $folderSuccess = 0
    
    foreach ($file in $files) {
        try {
            Add-PnPFile -Path $file.FullName -Folder "Shared Documents/$($folder.Name)" -ErrorAction Stop | Out-Null
            Write-Host "     ✓ $($file.Name)" -ForegroundColor Green
            $totalFiles++
            $folderSuccess++
        } catch {
            Write-Host "     ✗ $($file.Name) - $($_.Exception.Message)" -ForegroundColor Red
            $failedFiles++
        }
    }
    
    $stats += @{ Folder = $folder.Name; Files = $folderSuccess; Status = "✓" }
}

Disconnect-PnPOnline

# Summary Report
Write-Host "`n" + "═"*70 -ForegroundColor Cyan
Write-Host "                    SETUP COMPLETE                    " -ForegroundColor Green
Write-Host "═"*70 -ForegroundColor Cyan

Write-Host "`n📊 Upload Statistics:" -ForegroundColor Yellow
Write-Host "─────────────────────" -ForegroundColor Gray
foreach ($stat in $stats) {
    $status = if ($stat.Files -gt 0) { "✓" } else { "⚠" }
    $color = if ($stat.Files -gt 0) { "Green" } else { "Yellow" }
    Write-Host ("  {0} {1,-30} {2,2} files" -f $status, $stat.Folder, $stat.Files) -ForegroundColor $color
}

Write-Host "`n📈 Summary:" -ForegroundColor Yellow
Write-Host "  Total files uploaded: $totalFiles" -ForegroundColor White
Write-Host "  Failed uploads:       $failedFiles" -ForegroundColor $(if ($failedFiles -gt 0) { "Red" } else { "White" })

Write-Host "`n🔗 SharePoint Site:" -ForegroundColor Yellow
Write-Host "  $SiteUrl" -ForegroundColor Cyan

Write-Host "`n📂 Folder URLs for Agent Builder:" -ForegroundColor Yellow
Write-Host "────────────────────────────────────" -ForegroundColor Gray
foreach ($folder in $folders) {
    $folderUrl = "$SiteUrl/Shared Documents/$($folder.Name)"
    Write-Host "  $($folder.Name)" -ForegroundColor White
    Write-Host "    $folderUrl" -ForegroundColor DarkGray
}

Write-Host "`n🔐 Optional: Share site with your organization" -ForegroundColor Yellow
Write-Host "──────────────────────────────────────────────" -ForegroundColor Gray
$shareWithOrg = Read-Host "Share site with all users for easy demo access? (Y/N)"

if ($shareWithOrg -eq 'Y' -or $shareWithOrg -eq 'y') {
    Write-Host "`nAttempting to grant Read access to organization..." -ForegroundColor Gray
    
    # Try common group names (English, German, French)
    $groupNames = @(
        "Everyone except external users",
        "Jeder außer externen Benutzern", 
        "Tout le monde sauf les utilisateurs externes",
        "Everyone",
        "All Users",
        "All Company"
    )
    
    $permissionGranted = $false
    foreach ($groupName in $groupNames) {
        try {
            Set-PnPGroupPermissions -Identity $groupName -AddRole "Read" -ErrorAction Stop
            Write-Host "  ✓ Read permissions granted to '$groupName'" -ForegroundColor Green
            $permissionGranted = $true
            break
        } catch {
            # Try next group name
        }
    }
    
    if (-not $permissionGranted) {
        Write-Host "  ⚠ Auto-grant failed. Please share manually:" -ForegroundColor Yellow
        Write-Host "    1. Open: $SiteUrl/_layouts/15/user.aspx" -ForegroundColor DarkGray
        Write-Host "    2. Click 'Share' → Add your organization's group" -ForegroundColor DarkGray
        Write-Host "    3. Grant 'Read' permission" -ForegroundColor DarkGray
    }
} else {
    Write-Host "  ℹ Skipped. You can share manually later via Site Settings → Permissions" -ForegroundColor Gray
}

Write-Host "`n💡 Next Steps:" -ForegroundColor Yellow
Write-Host "───────────────" -ForegroundColor Gray
Write-Host "  1. Open Agent Builder: https://copilot.cloud.microsoft" -ForegroundColor White
Write-Host "  2. Create or edit an agent" -ForegroundColor White
Write-Host "  3. Add Knowledge Sources → SharePoint" -ForegroundColor White
Write-Host "  4. Select folders from the list above" -ForegroundColor White
Write-Host "  5. Test your agent with the demo scenarios!" -ForegroundColor White

Write-Host "`n✨ Ready to build amazing agents! ✨`n" -ForegroundColor Green
