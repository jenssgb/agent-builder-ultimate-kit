# Enterprise Websites Connector Agent

**Demo Focus**: Demonstrates Microsoft 365 Copilot connectors (Enterprise Websites for internal intranet sites)

---

## Agent Builder Configuration

### 1. Name
```
Company Intranet Assistant
```
*Character limit: 30. Actual length: 27*

### 2. Description
```
Helps employees find information from internal company websites and intranet portals. Searches through company intranet, internal wikis, department sites, and corporate web portals to answer questions about company information, internal resources, department contacts, and organizational procedures. Ideal for all employees needing access to internal web content, HR information, department resources, and company-wide communications without manually browsing multiple intranet sites.
```
*Character limit: 1,000. Actual length: 468*

### 3. Instructions
```
You are an agent that helps employees find information from internal company websites and intranet portals. You search through corporate intranets, internal wikis, and department sites to provide company information and resources.

Your behavior:
- Always cite the specific intranet page title and URL
- Provide direct links to internal web pages
- Include last updated dates when available
- Reference department contacts and resource owners
- Summarize long web pages into key points
- Point users to the right department or contact for follow-up
- Explain company policies, procedures, and resources
- Include navigation paths (breadcrumbs) when relevant
- Note if information may be outdated or needs verification
- Respect authentication and access controls

Your tone: Helpful, informative, company-focused, and organized.
```
*Character limit: 8,000. Actual length: 745*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required Copilot Connector:
- **Microsoft 365 Copilot connector**: Enterprise Websites
  - URL examples:
    - `https://intranet.contoso.com`
    - `https://hr.contoso.com`
    - `https://wiki.contoso.com`

**Administrator Prerequisites**:
1. Admin must enable Enterprise Websites connector in Microsoft 365 Admin Center
2. Navigate to: **Copilot** > **Connectors** > **Gallery** > **Enterprise websites**
3. Configure connection with website URLs and authentication
4. Complete indexing before connector is available to agents

**Connection Requirements**:
- Internal website URLs (must be accessible from organization network)
- Authentication method:
  - **Anonymous** (no authentication required)
  - **Basic Authentication** (username/password)
  - **Windows Authentication** (NTLM/Kerberos)
  - **OAuth 2.0** (for modern applications)
- Websites must allow crawler access (check robots.txt)
- Firewall rules must allow Microsoft crawler IP ranges

**Crawl Configuration**:
- Crawler depth: Can specify how many levels deep to crawl
- Include/exclude patterns: Control which pages to index
- Content freshness: Incremental crawl frequency
- File types: HTML, PDF, DOCX, PPTX, etc.

#### Optional Sources:
- **SharePoint folders**: Additional company documentation
- **Embedded files**: Quick reference guides

#### Toggles:
- ☐ **Search all websites**: Disabled
- ☑ **Only use specified sources**: Enabled (use only enterprise websites)

### 5. Capabilities

- ☐ **Create documents, charts, and code** (Code Interpreter) - Not needed
- ☐ **Create images** (Image Generator) - Not needed

### 6. Starter Prompts

1. "Where can I find the employee benefits information?"
2. "What are the company holidays for 2025?"
3. "How do I submit a travel expense?"
4. "Find the IT support contact for the London office"
5. "What's the company policy on remote work?"
6. "Where is the onboarding checklist for new hires?"
7. "Find the organizational chart for the marketing department"
8. "What training resources are available on the learning portal?"
9. "How do I request access to the customer database?"
10. "What are the guidelines for using company social media?"

---

## Mock Data Files

This demo includes **simulated intranet website content** (for environments without connector access):

### Files Included:
1. `intranet-homepage-content.txt` - Main intranet portal content
2. `intranet-hr-benefits.txt` - Employee benefits page
3. `intranet-it-support.txt` - IT support and contacts
4. `intranet-travel-policy.txt` - Travel and expense policy
5. `intranet-company-holidays.txt` - Holiday calendar
6. `intranet-remote-work-policy.txt` - Remote work guidelines
7. `intranet-training-portal.txt` - Learning resources

---

## Demo Script

### Setup (5 minutes)

**Prerequisites - Admin Configuration**:
1. Verify admin has enabled Enterprise Websites connector in Microsoft 365 Admin Center
2. Confirm connector indexing is complete (may take hours depending on site size)
3. Ensure intranet sites allow crawler access

**Agent Configuration**:
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Click **"Choose other data sources"**
   - Select **"Enterprise websites"** from connector list
   - URLs are configured by admin (not selectable per-agent)
5. Toggle **"Only use specified sources"** to ON
6. Add the 10 Starter Prompts
7. Click **"Create"** to save the agent

**Alternative Setup (No Connector Available)**:
- Upload the mock data files from this folder as embedded files
- Agent will simulate connector responses using text files

### Demo Flow (10 minutes)

**Step 1: Company Policy Search**
- **Ask**: "What's the company policy on remote work?"
- **Expected**: Agent returns policy summary from intranet page, includes eligibility requirements, approval process, equipment provisions, and link to full policy page

**Step 2: HR Benefits Information**
- **Ask**: "Where can I find the employee benefits information?"
- **Expected**: Agent provides benefits portal URL, lists available benefits (health insurance, 401k, PTO), open enrollment dates, and contact info for benefits team

**Step 3: Holiday Calendar**
- **Ask**: "What are the company holidays for 2025?"
- **Expected**: Agent lists all company holidays with dates, notes office closures, mentions regional variations, and provides link to official calendar

**Step 4: Department Contacts**
- **Ask**: "Find the IT support contact for the London office"
- **Expected**: Agent returns contact information (name, email, phone, office hours) from IT support intranet page, includes escalation process and helpdesk portal link

**Step 5: Process Documentation**
- **Ask**: "How do I submit a travel expense?"
- **Expected**: Agent explains expense submission process from travel policy page, lists required documentation, approval workflow, reimbursement timeline, and link to expense system

**Step 6: New Employee Resources**
- **Ask**: "Where is the onboarding checklist for new hires?"
- **Expected**: Agent finds onboarding page, summarizes checklist items (paperwork, equipment, training), provides timeline, and links to relevant resources

**Step 7: Organizational Information**
- **Ask**: "Find the organizational chart for the marketing department"
- **Expected**: Agent locates org chart page, describes department structure, lists key leadership, and provides link to interactive org chart or PDF

**Step 8: Learning Resources**
- **Ask**: "What training resources are available on the learning portal?"
- **Expected**: Agent searches learning portal, lists training categories (compliance, technical, leadership), highlights featured courses, and provides login instructions

**Step 9: Access Request Process**
- **Ask**: "How do I request access to the customer database?"
- **Expected**: Agent finds access request procedure from IT or security page, explains required approvals, compliance requirements, and links to request form

**Step 10: Corporate Guidelines**
- **Ask**: "What are the guidelines for using company social media?"
- **Expected**: Agent returns social media policy from corporate communications page, summarizes do's and don'ts, approval process for posts, and brand guidelines

---

## Expected Outputs

### Intranet Page Response Example:
```
**Remote Work Policy**

**Summary**: Contoso enables eligible employees to work remotely up to 3 days per week with manager approval.

**Eligibility**:
- Must be employed for at least 6 months
- Role must be suitable for remote work
- Manager discretion applies
- Performance review rating of "Meets Expectations" or higher

**Request Process**:
1. Discuss with your manager
2. Submit Remote Work Agreement form in HR portal
3. Await manager and HR approval (typically 1-2 weeks)
4. Receive remote work equipment (laptop, monitor, accessories)

**Requirements**:
- Secure home internet connection (minimum 25 Mbps)
- Private workspace free from distractions
- Available during core hours (10 AM - 3 PM local time)
- Maintain productivity and communication standards

**Equipment Provided**:
- Laptop with VPN access
- External monitor (optional)
- Headset for video calls
- Office supplies reimbursement ($50/month)

[Read full Remote Work Policy](https://intranet.contoso.com/policies/remote-work)

**Last Updated**: September 1, 2024
**Policy Owner**: HR Department
**Questions**: Contact hr@contoso.com
```

### HR Benefits Page Example:
```
**Employee Benefits Portal**

**Available Benefits**:

**Health & Wellness**:
- Medical insurance (PPO and HMO plans)
- Dental and vision coverage
- Mental health support (EAP)
- Fitness reimbursement ($300/year)

**Financial Benefits**:
- 401(k) with 6% company match
- Employee stock purchase plan (ESPP)
- Flexible spending accounts (FSA)
- Life and disability insurance

**Time Off**:
- Paid time off (PTO): 20 days/year
- Paid holidays: 10 days/year
- Parental leave: 12 weeks paid
- Sabbatical: 4 weeks after 5 years

**Professional Development**:
- Tuition reimbursement ($5,000/year)
- Conference attendance budget
- LinkedIn Learning access
- Mentorship program

**Open Enrollment**: November 1-15, 2024

[Access Benefits Portal](https://benefits.contoso.com)

**Contact Benefits Team**: benefits@contoso.com | 1-800-555-HELP
```

---

## Admin Setup Guide

### Prerequisites
- Global Administrator or Search Administrator role
- Internal websites accessible from organization network
- Microsoft 365 Copilot or Microsoft Search license
- Websites configured to allow crawler access

### Step-by-Step Configuration

1. **Access Admin Center**
   - Sign in to [Microsoft 365 Admin Center](https://admin.microsoft.com)
   - Navigate to **Copilot** > **Connectors**

2. **Add Enterprise Websites Connector**
   - Click **Gallery** tab
   - Select **Enterprise websites**
   - Click **Add**

3. **Configure Connection**
   - **Display name**: Choose recognizable name (e.g., "Company Intranet")
   - **Website URLs**: Enter internal URLs to crawl
     - `https://intranet.contoso.com`
     - `https://hr.contoso.com`
     - `https://wiki.contoso.com`
   - **Authentication type**: Choose appropriate method
     - Anonymous (if no auth required)
     - Basic Authentication
     - Windows Authentication (NTLM/Kerberos)
     - OAuth 2.0
   - **Staged rollout**: (Optional) Deploy to test users first

4. **Configure Crawl Settings**
   - **Crawl depth**: Specify levels (e.g., 3 levels deep)
   - **Include patterns**: Specify paths to crawl (e.g., `/policies/*`)
   - **Exclude patterns**: Skip irrelevant pages (e.g., `/archive/*`)
   - **Crawl frequency**: Set incremental sync schedule
   - **File types**: Select indexable types (HTML, PDF, DOCX, etc.)

5. **Configure Network Access**
   - Ensure firewall allows Microsoft crawler IP ranges
   - Verify internal DNS resolution works for Microsoft services
   - Test connectivity from Azure to internal websites
   - Configure any required proxy or VPN settings

6. **Wait for Initial Crawl**
   - Initial indexing may take several hours (depends on site size)
   - Monitor crawl errors and adjust configuration
   - Review indexed content in Admin Center

7. **Verify Connector Availability**
   - Users can now add connector in Agent Builder
   - Test with sample queries to verify content access

### Authentication Configuration

**Basic Authentication**:
```
- Username: service-account@contoso.com
- Password: [stored securely]
- Use for simple HTTP Basic Auth protected sites
```

**Windows Authentication (Recommended for AD-joined sites)**:
```
- Domain: CONTOSO
- Username: svc-crawler
- Password: [stored securely]
- Supports NTLM and Kerberos
```

**OAuth 2.0 (Modern Apps)**:
```
- Authorization endpoint
- Token endpoint
- Client ID and secret
- Scopes required for read access
```

### Network Configuration

**Firewall Rules**:
- Allow inbound from Microsoft crawler IP ranges (provided by Microsoft)
- Allow outbound to Microsoft Graph endpoints
- Verify no proxy blocks Microsoft services

**robots.txt Configuration** (on intranet site):
```
# Allow Microsoft crawler
User-agent: MS-Search-Bot
Allow: /

# Exclude archived content
User-agent: MS-Search-Bot
Disallow: /archive/
```

---

## Connector Configuration Options

| Configuration | Options | Recommendation |
|--------------|---------|----------------|
| Authentication | Anonymous, Basic, Windows, OAuth 2.0 | Windows Auth for AD sites |
| Crawl Depth | 1-10 levels | 3-4 levels for most intranets |
| Crawl Frequency | Daily, Weekly, On-demand | Daily for dynamic content |
| File Types | HTML, PDF, DOCX, PPTX, XLSX | Enable all relevant types |
| Include/Exclude | URL patterns | Use to focus on relevant content |

**Benefits of Proper Configuration**:
- Faster crawls with focused include/exclude patterns
- Better content freshness with appropriate sync frequency
- Reduced noise by excluding archived or irrelevant pages
- Improved security with proper authentication

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ❌ | Optional |
| Teams chats | ❌ | Not needed |
| My emails | ❌ | Not needed |
| Embedded files | ✅ | **Fallback option** for mock data |
| Public websites | ❌ | Use connector instead |
| Web search | ❌ | Disabled |
| Only use specified sources | ✅ | **ENABLED** - use only enterprise sites |
| People directory | ❌ | Optional |
| **Copilot connectors** | ✅ | **PRIMARY FEATURE** - Enterprise Websites |
| Code Interpreter | ❌ | Not needed |
| Image Generator | ❌ | Not needed |

---

## Troubleshooting

### Connector Not Visible in Agent Builder
- **Cause**: Admin hasn't enabled connector or indexing incomplete
- **Solution**: Contact admin to verify connector setup in Microsoft 365 Admin Center

### No Content Indexed
- **Cause**: Authentication failure, firewall blocking, or robots.txt restrictions
- **Solution**: 
  - Verify authentication credentials in Admin Center
  - Check firewall rules allow Microsoft crawler IP ranges
  - Ensure robots.txt doesn't block MS-Search-Bot

### Outdated Content
- **Cause**: Crawl frequency too low or manual trigger needed
- **Solution**: Admin should increase crawl frequency or trigger manual re-crawl

### Partial Content Indexed
- **Cause**: Crawl depth too shallow or include/exclude patterns too restrictive
- **Solution**: Admin should increase crawl depth and review URL patterns

### Authentication Errors
- **Cause**: Expired credentials, domain trust issues, or wrong auth method
- **Solution**: Admin should update credentials and verify authentication type matches website configuration

### Network Connectivity Issues
- **Cause**: VPN required, proxy blocking, or internal DNS not resolving
- **Solution**: Configure network access for Azure-to-internal connectivity

---

## Microsoft Learn References

- **Build agents with Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-build

- **Add knowledge sources (Copilot connectors)**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **Set up Copilot connectors in Microsoft 365 Admin Center**  
  https://learn.microsoft.com/en-us/microsoftsearch/configure-connector

- **Prebuilt Microsoft 365 Copilot connectors**  
  https://learn.microsoft.com/en-us/microsoftsearch/pre-built-connectors-overview

- **Connectors gallery**  
  https://learn.microsoft.com/en-us/microsoftsearch/connectors-gallery

---

## Notes

- Enterprise Websites connector requires **admin enablement** and network configuration
- Connector data is **indexed** into Microsoft Graph (not real-time)
- Users see all indexed content (no per-user permissions unless auth is configured)
- Initial crawl may take **several hours** depending on website size
- Incremental crawls update content automatically based on configured frequency
- Connector respects robots.txt and authentication requirements
- Suitable for internal intranets, wikis, and portals **not** already in SharePoint
- For SharePoint sites, use SharePoint knowledge source directly (better integration)
