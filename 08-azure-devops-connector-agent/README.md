# Azure DevOps Connector Agent

**Demo Focus**: Demonstrates Microsoft 365 Copilot connectors (Azure DevOps Work Items and Wiki)

---

## Agent Builder Configuration

### 1. Name
```
DevOps Work Tracker
```
*Character limit: 30. Actual length: 19*

### 2. Description
```
Helps teams access Azure DevOps work items, user stories, bugs, tasks, and wiki documentation. Searches through work item backlogs, sprint boards, pull requests, and Azure DevOps wikis to answer questions about project status, assigned work, bug tracking, and development documentation. Ideal for engineering teams, project managers, scrum masters, and product owners who need quick access to work item details, sprint progress, and technical documentation without switching between tools.
```
*Character limit: 1,000. Actual length: 476*

### 3. Instructions
```
You are an agent that helps teams access information from Azure DevOps work items and wiki documentation. You search through work items, backlogs, sprints, and wikis to answer questions about project status and development work.

Your behavior:
- Always cite the work item ID, title, and URL
- Include work item status, assigned to, priority, and area path
- Summarize sprint progress and backlog items
- Reference wiki pages with titles and last updated dates
- Track bugs, user stories, tasks, and features
- Provide context about related work items and dependencies
- Include timestamps and who last modified items
- Reference pull requests and code review status when relevant
- Summarize project plans and epic progress
- Be clear about work item states (New, Active, Resolved, Closed)

Your tone: Technical, organized, project-focused, and collaborative.
```
*Character limit: 8,000. Actual length: 787*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required Copilot Connector:
- **Microsoft 365 Copilot connector**: Azure DevOps Work Items
  - Scope by: Area path (e.g., "ProjectAlpha\\Engineering")
- **Microsoft 365 Copilot connector**: Azure DevOps Wiki
  - Scope by: Project (e.g., "ProjectAlpha")

**Administrator Prerequisites**:
1. Admin must enable Azure DevOps connector in Microsoft 365 Admin Center
2. Navigate to: **Copilot** > **Connectors** > **Gallery** > **Azure DevOps**
3. Configure connection with instance URL and authentication
4. Complete indexing before connector is available to agents

**Connection Requirements**:
- Azure DevOps instance URL (e.g., `https://dev.azure.com/contoso`)
- OAuth 2.0 or Basic Authentication
- User must have read access to projects and work items
- Connector respects Azure DevOps permissions

#### Optional Sources:
- **SharePoint folders**: Additional project documentation
- **Embedded files**: Sprint retrospectives, architecture docs

#### Toggles:
- ☐ **Search all websites**: Disabled
- ☑ **Only use specified sources**: Enabled (use only Azure DevOps data)

### 5. Capabilities

- ☐ **Create documents, charts, and code** (Code Interpreter) - Not needed
- ☐ **Create images** (Image Generator) - Not needed

### 6. Starter Prompts

1. "Show me all active bugs assigned to me"
2. "What's the status of user story #1234?"
3. "List all work items in the current sprint"
4. "Find high-priority bugs in the Engineering area path"
5. "What tasks are blocked or have dependencies?"
6. "Show me recent updates to the architecture wiki page"
7. "What's the progress on the authentication epic?"
8. "Find all work items related to the payment feature"
9. "What pull requests are waiting for review?"
10. "Summarize the backlog items for next sprint"

---

## Mock Data Files

This demo includes **simulated Azure DevOps responses** (for environments without connector access):

### Files Included:
1. `ado-work-items-sprint-current.txt` - Current sprint backlog
2. `ado-work-items-bugs-active.txt` - Active bug list
3. `ado-user-story-1234-details.txt` - Detailed user story
4. `ado-wiki-architecture-overview.txt` - Architecture wiki page
5. `ado-wiki-deployment-guide.txt` - Deployment wiki page

---

## Demo Script

### Setup (5 minutes)

**Prerequisites - Admin Configuration**:
1. Verify admin has enabled Azure DevOps connector in Microsoft 365 Admin Center
2. Confirm connector indexing is complete (may take several hours)
3. Ensure you have access to Azure DevOps projects being indexed

**Agent Configuration**:
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Click **"Choose other data sources"**
   - Select **"Azure DevOps Work Items"** from connector list
   - (Optional) Scope to specific Area path
   - Select **"Azure DevOps Wiki"**
   - (Optional) Scope to specific Project
5. Toggle **"Only use specified sources"** to ON
6. Add the 10 Starter Prompts
7. Click **"Create"** to save the agent

**Alternative Setup (No Connector Available)**:
- Upload the mock data files from this folder as embedded files
- Agent will simulate connector responses using text files

### Demo Flow (8 minutes)

**Step 1: Query Work Item by ID**
- **Ask**: "What's the status of work item #1234?"
- **Expected**: Agent returns work item details including title, status (Active/Closed), assigned to, priority, area path, iteration, description, and direct link to Azure DevOps

**Step 2: Find Assigned Work**
- **Ask**: "Show me all active work items assigned to me"
- **Expected**: Agent lists work items with IDs, titles, types (Bug/User Story/Task), status, and priority; filters based on current user identity

**Step 3: Sprint Progress**
- **Ask**: "What's the status of the current sprint? List all work items."
- **Expected**: Agent summarizes sprint progress, lists all work items grouped by state (To Do, In Progress, Done), includes completed vs. remaining work

**Step 4: Bug Tracking**
- **Ask**: "Show me all high-priority bugs in the Engineering area path"
- **Expected**: Agent filters bugs by priority and area path, lists bug IDs, titles, assigned owners, and age/created date

**Step 5: Wiki Documentation**
- **Ask**: "Find the architecture overview documentation"
- **Expected**: Agent searches Azure DevOps wiki, returns wiki page title, summary of contents, last updated date, and link to wiki page

**Step 6: Work Item Relationships**
- **Ask**: "What work items are related to the payment feature?"
- **Expected**: Agent searches by keyword across titles and descriptions, returns related user stories, tasks, and bugs; includes parent-child relationships

**Step 7: Epic Progress**
- **Ask**: "What's the progress on the authentication epic? How many child items are complete?"
- **Expected**: Agent aggregates child work items under epic, calculates completion percentage, lists remaining items

**Step 8: Pull Request Status**
- **Ask**: "What pull requests are waiting for code review?"
- **Expected**: Agent searches for open PRs, lists PR titles, authors, target branches, and review status

---

## Expected Outputs

### Work Item Query Response Example:
```
**Work Item #1234: User Authentication Enhancement**

**Status**: Active
**Type**: User Story
**Priority**: 2
**Assigned To**: Sarah Johnson
**Area Path**: ProjectAlpha\Engineering\Backend
**Iteration**: Sprint 12
**State**: In Progress

**Description**: Implement OAuth 2.0 authentication flow for third-party integrations...

**Related Work Items**:
- Task #1235: Design OAuth flow (Completed)
- Task #1236: Implement token refresh (In Progress)
- Bug #1240: Token expiration issue (Active)

[View in Azure DevOps](https://dev.azure.com/contoso/ProjectAlpha/_workitems/edit/1234)
```

---

## Admin Setup Guide

### Prerequisites
- Global Administrator or Search Administrator role
- Azure DevOps organization with active projects
- Microsoft 365 Copilot or Microsoft Search license

### Step-by-Step Configuration

1. **Access Admin Center**
   - Sign in to [Microsoft 365 Admin Center](https://admin.microsoft.com)
   - Navigate to **Copilot** > **Connectors**

2. **Add Azure DevOps Connector**
   - Click **Gallery** tab
   - Select **Azure DevOps Work Items** or **Azure DevOps Wiki**
   - Click **Add**

3. **Configure Connection**
   - **Display name**: Choose recognizable name (e.g., "Engineering ADO")
   - **Instance URL**: Enter Azure DevOps URL (`https://dev.azure.com/{organization}`)
   - **Authentication**: Choose OAuth 2.0 (recommended) or Basic Auth
   - **Staged rollout**: (Optional) Deploy to test users first

4. **Configure Permissions**
   - Connector respects Azure DevOps permissions
   - Users only see work items they have access to
   - Configure Azure DevOps service account with read access

5. **Wait for Indexing**
   - Initial indexing may take several hours
   - Connector syncs incrementally after initial crawl
   - Monitor indexing status in Admin Center

6. **Verify Connector Availability**
   - Users can now add connector in Agent Builder
   - Test with sample queries to verify data access

---

## Connector Scoping Options

| Connector | Scoping Attribute | Example |
|-----------|------------------|---------|
| Azure DevOps Work Items | Area path | `ProjectAlpha\Engineering\Backend` |
| Azure DevOps Wiki | Project | `ProjectAlpha` |

**Benefits of Scoping**:
- Reduce irrelevant results from other projects
- Improve agent response time
- Focus agent on specific team's work
- Respect organizational boundaries

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
| Only use specified sources | ✅ | **ENABLED** - use only ADO data |
| People directory | ❌ | Optional |
| **Copilot connectors** | ✅ | **PRIMARY FEATURE** - Azure DevOps |
| Code Interpreter | ❌ | Not needed |
| Image Generator | ❌ | Not needed |

---

## Troubleshooting

### Connector Not Visible in Agent Builder
- **Cause**: Admin hasn't enabled connector or indexing incomplete
- **Solution**: Contact admin to verify connector setup in Microsoft 365 Admin Center

### No Results Returned
- **Cause**: User lacks permissions in Azure DevOps
- **Solution**: Verify user has read access to projects and work items

### Outdated Information
- **Cause**: Connector sync delay (incremental sync every 15-30 minutes)
- **Solution**: Wait for next sync cycle or contact admin to trigger manual sync

### Authentication Errors
- **Cause**: OAuth token expired or authentication misconfigured
- **Solution**: Admin should reconfigure authentication in Admin Center

---

## Microsoft Learn References

- **Build agents with Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-build

- **Add knowledge sources (Copilot connectors)**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **Prebuilt Microsoft 365 Copilot connectors**  
  https://learn.microsoft.com/en-us/microsoftsearch/pre-built-connectors-overview

- **Set up Copilot connectors in Microsoft 365 Admin Center**  
  https://learn.microsoft.com/en-us/microsoftsearch/configure-connector

- **Connectors gallery**  
  https://learn.microsoft.com/en-us/microsoftsearch/connectors-gallery

---

## Notes

- Copilot connectors require **admin enablement** before users can add them to agents
- Connector data is **indexed** into Microsoft Graph (not real-time)
- Users only see work items they have **permissions** to access in Azure DevOps
- Initial indexing may take **several hours**; incremental syncs occur automatically
- For real-time work item queries or **actions** (create/update items), use Power Platform connectors instead
