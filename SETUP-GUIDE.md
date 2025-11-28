# SharePoint Setup Guide

## Automated Setup (Recommended)

### Prerequisites
1. **Clone this repository**
   ```powershell
   git clone https://github.com/jenssgb/agent-builder-ultimate-kit.git
   cd agent-builder-ultimate-kit
   ```

2. **SharePoint Admin Access**
   - You need SharePoint admin permissions to create sites and upload files
   - Have your tenant name ready (e.g., `contoso` for `contoso.sharepoint.com`)

### Run the Setup Script

```powershell
.\setup-sharepoint.ps1
```

The script will:
1. ✅ Ask for your tenant name (e.g., `contoso`)
2. ✅ Ask for site name (default: `AgentBuilderDemo`)
3. ✅ Install PnP.PowerShell module if needed
4. ✅ Prompt for interactive login (use admin account)
5. ✅ Create SharePoint site if it doesn't exist
6. ✅ Create folder structure:
   - `01-Employee-Docs`
   - `02-Meeting-Transcripts`
   - `03-Email-Archives`
   - `06-Compliance-Docs`
   - `08-Azure-DevOps-Docs`
   - `13-Sales-Data`
   - `14-Marketing-Assets`
   - `15-Combined-Knowledge`
7. ✅ Upload all mock data files (47 files total)
8. ✅ Provide folder URLs for Agent Builder configuration

### Example Output
```
╔════════════════════════════════════════════════════════════════╗
║  Agent Builder Ultimate Kit - SharePoint Setup                ║
╚════════════════════════════════════════════════════════════════╝

Step 1: Tenant Configuration
─────────────────────────────
Enter your tenant name: contoso
Enter site name: AgentBuilderDemo

Configuration:
  Tenant:     contoso
  Site URL:   https://contoso.sharepoint.com/sites/AgentBuilderDemo

📁 01-Employee-Docs
   ✓ Folder created
   Uploading 5 files...
     ✓ benefits-guide-2024.txt
     ✓ code-of-conduct.txt
     ...

═══════════════════════════════════════════════════════════════
                    SETUP COMPLETE
═══════════════════════════════════════════════════════════════

Total files uploaded: 47
```

---

## Manual Setup (Alternative)

If you prefer manual setup or don't have admin access:

### 1. Create SharePoint Site
1. Go to SharePoint Admin Center
2. Create new **Team Site** or **Communication Site**
3. Name: "Agent Builder Demo Hub"

### 2. Create Folder Structure
In the site's **Documents** library, create these folders:
- `01-Employee-Docs`
- `02-Meeting-Transcripts`
- `03-Email-Archives`
- `06-Compliance-Docs`
- `08-Azure-DevOps-Docs`
- `13-Sales-Data`
- `14-Marketing-Assets`
- `15-Combined-Knowledge`

### 3. Upload Mock Data Files
Navigate to each demo folder in this repo and upload the `mock-data` contents:

```
📁 agent-builder-ultimate-kit/
├── 01-sharepoint-files-agent/mock-data/*.txt → 01-Employee-Docs/
├── 02-teams-meetings-chats-agent/mock-data/*.txt → 02-Meeting-Transcripts/
├── 03-email-intelligence-agent/mock-data/*.txt → 03-Email-Archives/
├── 06-scoped-source-agent/mock-data/*.txt → 06-Compliance-Docs/
├── 08-azure-devops-connector-agent/mock-data/*.md → 08-Azure-DevOps-Docs/
├── 13-data-analysis-agent/mock-data/*.* → 13-Sales-Data/
├── 14-marketing-content-agent/mock-data/*.* → 14-Marketing-Assets/
└── 15-all-features-showcase-agent/mock-data/*.* → 15-Combined-Knowledge/
```

---

## Using in Agent Builder

### 1. Open Agent Builder
Go to: **https://copilot.cloud.microsoft**

### 2. Add SharePoint Knowledge
1. Create/edit an agent
2. Click **Knowledge sources**
3. Select **SharePoint**
4. Browse to your site: `Agent Builder Demo Hub`
5. Select relevant folder(s) for your demo

### 3. Folder Mapping by Demo

| Demo | Agent Name | SharePoint Folder |
|------|------------|-------------------|
| **01** | HR Policy Assistant | `01-Employee-Docs` |
| **02** | Meeting Insights Analyzer | `02-Meeting-Transcripts` |
| **03** | Email Intelligence Agent | `03-Email-Archives` |
| **06** | Compliance Scoped Agent | `06-Compliance-Docs` |
| **08** | Azure DevOps Agent | `08-Azure-DevOps-Docs` |
| **13** | Sales Data Analyst | `13-Sales-Data` |
| **14** | Marketing Content Creator | `14-Marketing-Assets` |
| **15** | All Features Showcase | `15-Combined-Knowledge` |

---

## Troubleshooting

### Script Fails with "Access Denied"
- Ensure you have SharePoint admin permissions
- Try running as Administrator (PowerShell)

### PnP.PowerShell Installation Issues
```powershell
# Manual installation
Install-Module -Name PnP.PowerShell -Scope CurrentUser -Force -AllowClobber
```

### Site Already Exists Error
- The script will detect existing sites and skip creation
- It will only upload files to folders

### File Upload Failures
- Check file size limits (30MB for Excel, 512MB for others)
- Verify file isn't locked/in use
- Ensure SharePoint has storage space

### Authentication Prompts
- First prompt: Tenant admin login
- Second prompt: Site access login
- Use same admin account for both

---

## Architecture

```
SharePoint Site: "Agent Builder Demo Hub"
└── Documents/
    ├── 01-Employee-Docs/ (5 files, ~25KB)
    ├── 02-Meeting-Transcripts/ (5 files, ~15KB)
    ├── 03-Email-Archives/ (5 files, ~20KB)
    ├── 06-Compliance-Docs/ (5 files, ~30KB)
    ├── 08-Azure-DevOps-Docs/ (3 files, ~12KB)
    ├── 13-Sales-Data/ (7 files, ~45KB)
    ├── 14-Marketing-Assets/ (7 files, ~40KB)
    └── 15-Combined-Knowledge/ (10 files, ~60KB)

Total: 47 files, ~247KB
Within Agent Builder limits: ✅
  - Max 100 files per agent
  - Max 512MB per file
  - Max 30MB for Excel files
```

---

## License Requirements

⚠️ **SharePoint as knowledge source requires:**
- Microsoft 365 Copilot License, OR
- Pay-as-you-go pricing (no license required for external knowledge only)

💡 **Tip:** For demos without license, use:
- Public websites (no license)
- Web search (no license)
- Embedded files (no license)
- Code Interpreter (no license)
- Image Generator (no license)

---

## Additional Resources

- [Agent Builder Documentation](https://learn.microsoft.com/microsoft-365-copilot/extensibility/copilot-studio-agent-builder)
- [SharePoint Knowledge Sources](https://learn.microsoft.com/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-knowledge)
- [PnP PowerShell Documentation](https://pnp.github.io/powershell/)

---

**Need help?** Open an issue on GitHub or check the main README.md for more details.
