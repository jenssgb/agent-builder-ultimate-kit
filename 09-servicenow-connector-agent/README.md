# ServiceNow Connector Agent

**Demo Focus**: Demonstrates Microsoft 365 Copilot connectors (ServiceNow Knowledge, Catalog, and Tickets)

---

## Agent Builder Configuration

### 1. Name
```
IT Service Desk Assistant
```
*Character limit: 30. Actual length: 25*

### 2. Description
```
Helps employees find IT support information from ServiceNow including knowledge base articles, service catalog items, and ticket status. Searches through ServiceNow KB articles, IT service catalog, incident tickets, and request fulfillment to answer questions about IT issues, service requests, and support procedures. Ideal for employees needing IT help, service desk agents, and IT managers tracking incident resolution and service delivery across the organization.
```
*Character limit: 1,000. Actual length: 451*

### 3. Instructions
```
You are an agent that helps employees access IT support information from ServiceNow. You search through knowledge base articles, service catalog items, and ticket information to provide IT support and guidance.

Your behavior:
- Always cite the knowledge article number (KB number) or ticket number
- Provide step-by-step troubleshooting instructions from KB articles
- Include relevant links to ServiceNow articles and tickets
- Summarize ticket status, priority, assigned to, and last updated date
- Reference service catalog items with descriptions and request processes
- Explain how to submit service requests or incidents
- Provide context about related KB articles and common issues
- Include SLA information and expected resolution times
- Suggest self-service options when available
- Be clear about ticket states (New, In Progress, Resolved, Closed)

Your tone: Helpful, supportive, clear, and service-oriented.
```
*Character limit: 8,000. Actual length: 816*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required Copilot Connector:
- **Microsoft 365 Copilot connector**: ServiceNow Knowledge
  - Scope by: Knowledge base (e.g., "IT Knowledge Base")
- **Microsoft 365 Copilot connector**: ServiceNow Catalog
  - Scope by: Catalog (e.g., "IT Service Catalog")
- **Microsoft 365 Copilot connector**: ServiceNow Tickets
  - Scope by: Entity type (e.g., "Incident", "Category: Hardware")

**Administrator Prerequisites**:
1. Admin must enable ServiceNow connector in Microsoft 365 Admin Center
2. Navigate to: **Copilot** > **Connectors** > **Gallery** > **ServiceNow**
3. Configure connection with instance URL and authentication
4. Complete indexing before connector is available to agents

**Connection Requirements**:
- ServiceNow instance URL (e.g., `https://contoso.service-now.com`)
- OAuth 2.0 or Basic Authentication
- ServiceNow account with **knowledge** role for KB access
- User permissions determine which tickets/articles are visible
- Connector respects ServiceNow ACLs and user criteria

#### Optional Sources:
- **SharePoint folders**: Additional IT policies or guidelines
- **Embedded files**: Quick reference guides

#### Toggles:
- ☐ **Search all websites**: Disabled
- ☑ **Only use specified sources**: Enabled (use only ServiceNow data)

### 5. Capabilities

- ☐ **Create documents, charts, and code** (Code Interpreter) - Not needed
- ☐ **Create images** (Image Generator) - Not needed

### 6. Starter Prompts

1. "How do I reset my password?"
2. "What's the status of my ticket INC0012345?"
3. "How do I request a new laptop?"
4. "Find the VPN setup instructions"
5. "What IT services can I request from the catalog?"
6. "How do I troubleshoot printer connection issues?"
7. "What's the process for requesting software access?"
8. "Show me knowledge articles about email problems"
9. "How long does it take to get a new monitor?"
10. "Find articles about multi-factor authentication setup"

---

## Mock Data Files

This demo includes **simulated ServiceNow responses** (for environments without connector access):

### Files Included:
1. `servicenow-kb-password-reset.txt` - Password reset KB article
2. `servicenow-kb-vpn-setup.txt` - VPN configuration guide
3. `servicenow-kb-printer-troubleshooting.txt` - Printer issue solutions
4. `servicenow-catalog-laptop-request.txt` - Laptop request process
5. `servicenow-ticket-inc0012345.txt` - Sample incident ticket
6. `servicenow-catalog-software-access.txt` - Software access request
7. `servicenow-kb-mfa-setup.txt` - MFA enrollment instructions

---

## Demo Script

### Setup (5 minutes)

**Prerequisites - Admin Configuration**:
1. Verify admin has enabled ServiceNow connector in Microsoft 365 Admin Center
2. Confirm connector indexing is complete (may take several hours)
3. Ensure you have ServiceNow account with appropriate permissions

**Agent Configuration**:
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Click **"Choose other data sources"**
   - Select **"ServiceNow Knowledge"** from connector list
   - (Optional) Scope to specific Knowledge base
   - Select **"ServiceNow Catalog"**
   - (Optional) Scope to specific Catalog
   - Select **"ServiceNow Tickets"**
   - (Optional) Scope by Entity type or Category
5. Toggle **"Only use specified sources"** to ON
6. Add the 10 Starter Prompts
7. Click **"Create"** to save the agent

**Alternative Setup (No Connector Available)**:
- Upload the mock data files from this folder as embedded files
- Agent will simulate connector responses using text files

### Demo Flow (10 minutes)

**Step 1: Knowledge Base Search**
- **Ask**: "How do I reset my password?"
- **Expected**: Agent returns KB article with step-by-step instructions, KB number (e.g., KB0010001), categories/tags, and direct link to ServiceNow article

**Step 2: Ticket Status Query**
- **Ask**: "What's the status of ticket INC0012345?"
- **Expected**: Agent returns ticket details including status (New/In Progress/Resolved), priority, assigned to, description, opened date, last updated, and link to ServiceNow ticket

**Step 3: Service Catalog Request**
- **Ask**: "How do I request a new laptop?"
- **Expected**: Agent provides service catalog item description, request process, required approvals, typical fulfillment time, and link to submit request in ServiceNow

**Step 4: Troubleshooting Guide**
- **Ask**: "Find VPN setup instructions for Windows"
- **Expected**: Agent searches KB, returns relevant article(s) with configuration steps, troubleshooting tips, and screenshots/attachments references

**Step 5: Service Catalog Browse**
- **Ask**: "What IT services can I request from the catalog?"
- **Expected**: Agent lists common catalog items (laptop, software, access requests) with brief descriptions and how to request each

**Step 6: Complex Troubleshooting**
- **Ask**: "My printer won't connect to the network. How do I fix it?"
- **Expected**: Agent returns KB article with troubleshooting steps, checks for related articles (network issues, driver problems), provides escalation path if self-service doesn't work

**Step 7: Process Documentation**
- **Ask**: "What's the process for requesting software access?"
- **Expected**: Agent explains request workflow, approval requirements, typical timeframe, and links to both KB article and catalog request form

**Step 8: Related Articles**
- **Ask**: "Show me all knowledge articles about email problems"
- **Expected**: Agent searches by keyword, returns multiple KB articles grouped by topic (Outlook setup, email forwarding, spam filtering, etc.)

**Step 9: SLA Information**
- **Ask**: "How long does it take to get a new monitor?"
- **Expected**: Agent finds catalog item, includes SLA/fulfillment time, approval process, and any prerequisites

**Step 10: Self-Service Guidance**
- **Ask**: "I need to set up multi-factor authentication. Walk me through it."
- **Expected**: Agent returns detailed KB article with enrollment steps, screenshots/diagrams references, troubleshooting tips, and support contact

---

## Expected Outputs

### Knowledge Base Article Response Example:
```
**KB0010001: How to Reset Your Password**

**Summary**: This article explains how to reset your password using the self-service password reset portal.

**Instructions**:
1. Navigate to https://passwordreset.contoso.com
2. Enter your employee ID or email address
3. Verify your identity using registered phone or email
4. Create a new password meeting complexity requirements:
   - At least 12 characters
   - Include uppercase, lowercase, numbers, and symbols
   - Cannot reuse last 5 passwords
5. Confirm your new password
6. Log in to your accounts with the new password

**Common Issues**:
- If you don't receive the verification code, check spam folder or contact IT
- Ensure your recovery phone/email is up to date in the employee portal

**Related Articles**:
- KB0010002: Password Requirements and Best Practices
- KB0010005: Unlock Your Account

[View full article in ServiceNow](https://contoso.service-now.com/kb?id=kb0010001)

**Last Updated**: November 15, 2024
**Category**: Account Management
```

### Service Catalog Item Response Example:
```
**Service Catalog: Request New Laptop**

**Description**: Request a new laptop for new employees or equipment replacement.

**Request Process**:
1. Select laptop model from approved list (Dell Latitude, MacBook Pro, etc.)
2. Provide business justification
3. Manager approval required
4. IT Director approval for MacBooks
5. Fulfillment by IT Asset Management team

**Typical Fulfillment Time**: 3-5 business days after approval

**Requirements**:
- Completed new hire paperwork (for new employees)
- Trade-in of old equipment (for replacements)
- Budget code for expense allocation

[Request this item in ServiceNow](https://contoso.service-now.com/catalog?id=laptop_request)
```

### Ticket Status Response Example:
```
**Incident INC0012345: Unable to Access Email on Mobile**

**Status**: In Progress
**Priority**: 3 - Moderate
**Assigned To**: John Smith (IT Support Team)
**Opened**: November 20, 2024 09:15 AM
**Last Updated**: November 21, 2024 02:30 PM

**Description**: User reports inability to access corporate email on iPhone after recent iOS update.

**Work Notes** (Latest):
"Confirmed iOS 17.1 update caused certificate issue. Provided updated configuration profile. Awaiting user confirmation."

**Next Steps**: User testing new configuration. Follow up scheduled for 11/22.

**Expected Resolution**: November 22, 2024

[View ticket in ServiceNow](https://contoso.service-now.com/incident?id=INC0012345)
```

---

## Admin Setup Guide

### Prerequisites
- Global Administrator or Search Administrator role
- ServiceNow instance with active subscription
- Microsoft 365 Copilot or Microsoft Search license
- ServiceNow account with **knowledge** role

### Step-by-Step Configuration

1. **Access Admin Center**
   - Sign in to [Microsoft 365 Admin Center](https://admin.microsoft.com)
   - Navigate to **Copilot** > **Connectors**

2. **Add ServiceNow Connector**
   - Click **Gallery** tab
   - Select **ServiceNow Knowledge**, **ServiceNow Catalog**, or **ServiceNow Tickets**
   - Click **Add**

3. **Configure Connection**
   - **Display name**: Choose recognizable name (e.g., "IT ServiceNow")
   - **Instance URL**: Enter ServiceNow URL (`https://contoso.service-now.com`)
   - **Authentication**: Choose OAuth 2.0 (recommended) or Basic Auth
   - **User criteria flow**: Choose Simple or Advanced
     - **Simple**: Standard article-level permissions only
     - **Advanced**: Supports advanced scripts and hierarchical permissions
   - **Staged rollout**: (Optional) Deploy to test users first

4. **Configure Permissions**
   - Connector respects ServiceNow ACLs and user criteria
   - Users only see KB articles/tickets they have access to
   - Configure ServiceNow service account with appropriate roles

5. **Wait for Indexing**
   - Initial indexing may take several hours (depends on data volume)
   - Connector syncs incrementally after initial crawl
   - Monitor indexing status in Admin Center

6. **Verify Connector Availability**
   - Users can now add connector in Agent Builder
   - Test with sample queries to verify data access

### Authentication Configuration (OAuth 2.0)

**Recommended for security and user-specific permissions**:

1. In ServiceNow, configure OAuth endpoint
2. Create OAuth application credentials
3. In Microsoft 365 Admin Center, enter OAuth credentials
4. Test connection and verify permissions

---

## Connector Scoping Options

| Connector | Scoping Attribute | Example |
|-----------|------------------|---------|
| ServiceNow Knowledge | Knowledge base | `IT Knowledge Base`, `HR Knowledge Base` |
| ServiceNow Catalog | Catalog | `IT Service Catalog`, `Facilities Catalog` |
| ServiceNow Tickets | Entity type (Sys_class_name) | `Incident`, `Service Request` |
| ServiceNow Tickets | Category | `Hardware`, `Software`, `Network` |
| ServiceNow Tickets | Subcategory | `Laptop`, `Monitor`, `Email` |

**Benefits of Scoping**:
- Reduce irrelevant results from other departments
- Improve agent response accuracy
- Focus agent on specific service areas
- Respect organizational structure

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ❌ | Optional |
| Teams chats | ❌ | Not needed |
| My emails | ❌ | Not needed |
| Embedded files | ✅ | **Fallback option** for mock data |
| Public websites | ❌ | Not needed |
| Web search | ❌ | Disabled |
| Only use specified sources | ✅ | **ENABLED** - use only ServiceNow data |
| People directory | ❌ | Optional |
| **Copilot connectors** | ✅ | **PRIMARY FEATURE** - ServiceNow |
| Code Interpreter | ❌ | Not needed |
| Image Generator | ❌ | Not needed |

---

## Troubleshooting

### Connector Not Visible in Agent Builder
- **Cause**: Admin hasn't enabled connector or indexing incomplete
- **Solution**: Contact admin to verify connector setup in Microsoft 365 Admin Center

### No Results or Limited Results
- **Cause**: User lacks permissions in ServiceNow or user criteria restrictions
- **Solution**: Verify user has read access to KB articles and appropriate roles in ServiceNow

### Outdated Information
- **Cause**: Connector sync delay (incremental sync frequency varies)
- **Solution**: Wait for next sync cycle or contact admin to trigger manual sync

### Authentication Errors
- **Cause**: OAuth token expired or authentication misconfigured
- **Solution**: Admin should reconfigure authentication in Admin Center

### Advanced Scripts Not Working
- **Cause**: Connector configured with "Simple" flow instead of "Advanced"
- **Solution**: Admin should reconfigure connector with "Advanced" user criteria flow

---

## Microsoft Learn References

- **Build agents with Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-build

- **Add knowledge sources (Copilot connectors)**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **Deploy ServiceNow Knowledge Copilot connector**  
  https://learn.microsoft.com/en-us/microsoftsearch/servicenow-knowledge-deployment

- **Set up Copilot connectors in Microsoft 365 Admin Center**  
  https://learn.microsoft.com/en-us/microsoftsearch/configure-connector

- **Prebuilt Microsoft 365 Copilot connectors**  
  https://learn.microsoft.com/en-us/microsoftsearch/pre-built-connectors-overview

- **Connectors gallery**  
  https://learn.microsoft.com/en-us/microsoftsearch/connectors-gallery

---

## Notes

- Copilot connectors require **admin enablement** before users can add them to agents
- Connector data is **indexed** into Microsoft Graph (not real-time)
- Users only see KB articles and tickets they have **permissions** to access in ServiceNow
- Initial indexing may take **several hours**; incremental syncs occur automatically
- **Advanced user criteria flow** recommended if ServiceNow uses advanced scripts or hierarchical permissions
- For real-time ticket queries or **actions** (create/update tickets), use Power Platform connectors instead
- ServiceNow connector respects ACLs, user criteria, and knowledge base permissions
