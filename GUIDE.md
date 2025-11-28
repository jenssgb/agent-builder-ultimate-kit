# Agent Builder Demo Cases - Complete Guide

**Purpose**: Comprehensive demonstration package showcasing all Microsoft 365 Copilot Agent Builder capabilities through 15 production-ready demo cases with detailed documentation, mock data, and step-by-step implementation guides.

---

## 📋 Table of Contents

1. [Purpose and Scope](#purpose-and-scope)
2. [Demo Case Catalog](#demo-case-catalog)
3. [Mock Data Files Status](#mock-data-files-status)
4. [Getting Started](#getting-started)
5. [Demo Selection Guide](#demo-selection-guide)

---

## Purpose and Scope

### What This Package Provides

This comprehensive demo package enables you to:

✅ **Learn Agent Builder Features** - Experience every capability through hands-on demos  
✅ **Accelerate Development** - Copy-paste ready configurations for quick agent creation  
✅ **Understand Best Practices** - See examples of well-structured agents  
✅ **Test Scenarios** - Use realistic mock data to demonstrate agent capabilities  
✅ **Train Teams** - Complete demo scripts for workshops and training sessions  

### Coverage

**Complete Feature Coverage**:
- ✅ All knowledge source types (SharePoint, Teams, Emails, Files, Websites)
- ✅ All knowledge toggles (Web search, Scoped sources, People directory)
- ✅ All Copilot connectors (Azure DevOps, ServiceNow, Enterprise Websites)
- ✅ Both capabilities (Code Interpreter, Image Generator)
- ✅ Multi-capability combinations
- ✅ Real-world use cases for every business role

---

## Demo Case Catalog

### 01 - SharePoint Files Agent
**Purpose**: Policy & Procedure Guide  
**Primary Feature**: SharePoint sites, folders, and files as knowledge sources  
**Business Use Case**: HR policy assistant, compliance document search, employee handbook guidance  
**Key Learning**: How to add SharePoint content, organize by sites/folders, handle document permissions  
**Time Required**: 5-7 minutes  
**Mock Data**: ✅ Complete (5 policy files)  
**Ideal For**: HR teams, compliance officers, managers  

**What You'll Learn**:
- Adding SharePoint sites and folders as knowledge sources
- Using "Only use specified sources" toggle for compliance
- Citing document names and sections in responses
- Structuring policy-focused agent instructions

---

### 02 - Teams Meetings & Chats Agent
**Purpose**: Project Memory Assistant  
**Primary Feature**: Teams chats, meetings, and transcripts as knowledge sources  
**Business Use Case**: Project decision tracking, meeting recap, action item retrieval  
**Key Learning**: How to add Teams channels, access meeting transcripts, search chat history  
**Time Required**: 7-10 minutes  
**Mock Data**: ⚠️ Partial (1 of 5 files) - **NEEDS MORE FILES**  
**Ideal For**: Project managers, team leads, stakeholders tracking decisions  

**What You'll Learn**:
- Adding specific Teams channels (up to 5) vs "All chats and meetings"
- Searching meeting transcripts for decisions and action items
- Attributing statements to specific speakers
- License requirements for Teams knowledge source

---

### 03 - Email Intelligence Agent
**Purpose**: Email Research Assistant  
**Primary Feature**: "My emails" toggle (personal mailbox)  
**Business Use Case**: Finding past email conversations, tracking commitments, locating attachments  
**Key Learning**: How to enable personal mailbox search, privacy implications, limitations  
**Time Required**: 5-7 minutes  
**Mock Data**: ❌ Missing - **NEEDS CREATION**  
**Ideal For**: Sales teams, account managers, executives tracking communications  

**What You'll Learn**:
- Enabling "My emails" knowledge source
- Understanding personal vs shared mailbox limitations
- Privacy considerations (creator-only access)
- License requirements

---

### 04 - Public Website Research Agent
**Purpose**: Tech News & Docs Researcher  
**Primary Feature**: Public websites (up to 4 URLs)  
**Business Use Case**: Documentation search, competitor research, industry news monitoring  
**Key Learning**: How to add public URLs, crawl depth, URL requirements  
**Time Required**: 6-8 minutes  
**Mock Data**: ✅ N/A (uses real public websites)  
**Ideal For**: Developers, researchers, competitive intelligence teams  

**What You'll Learn**:
- Adding public website URLs (max 4)
- Understanding crawl depth (2 levels from URL)
- URL format requirements (no query parameters)
- Comparing information across multiple sources

---

### 05 - Web Search Agent
**Purpose**: Current Events Researcher  
**Primary Feature**: "Search all websites" toggle (real-time web search)  
**Business Use Case**: Breaking news, industry trends, current information lookup  
**Key Learning**: When to enable web search, how to combine with other sources  
**Time Required**: 5-7 minutes  
**Mock Data**: ✅ N/A (uses real-time web search)  
**Ideal For**: Marketing teams, competitive analysis, trend monitoring  

**What You'll Learn**:
- Enabling real-time web search toggle
- Combining web search with internal knowledge sources
- Citing web sources with publication dates
- When web search is appropriate vs not

---

### 06 - Scoped Source Agent
**Purpose**: Compliance Policy Assistant  
**Primary Feature**: "Only use specified sources" toggle  
**Business Use Case**: Compliance-safe answers, policy guidance, regulated industries  
**Key Learning**: Strict source control, preventing general AI knowledge, compliance use cases  
**Time Required**: 5-7 minutes  
**Mock Data**: ❌ Missing - **NEEDS CREATION**  
**Ideal For**: Legal, compliance, regulated industries, security teams  

**What You'll Learn**:
- Enabling "Only use specified sources" toggle
- Preventing general AI knowledge in responses
- Fallback behavior when information not found
- Compliance and regulatory use cases

---

### 07 - People Directory Agent
**Purpose**: Expert Finder & Org Navigator  
**Primary Feature**: "Reference people in organization" toggle  
**Business Use Case**: Finding subject matter experts, org chart navigation, contact discovery  
**Key Learning**: Searching employee directory, respecting privacy, finding expertise  
**Time Required**: 5-7 minutes  
**Mock Data**: ❌ Missing - **NEEDS CREATION**  
**Ideal For**: HR, project managers, new employees, cross-team collaboration  

**What You'll Learn**:
- Enabling people directory search
- Finding employees by name, title, location, expertise
- Respecting privacy and permissions
- License requirements

---

### 08 - Azure DevOps Connector Agent
**Purpose**: DevOps Work Tracker  
**Primary Feature**: Microsoft 365 Copilot connectors (Azure DevOps)  
**Business Use Case**: Work item tracking, sprint progress, wiki documentation access  
**Key Learning**: Admin-enabled connectors, scoping by area path, connector setup  
**Time Required**: 10-15 minutes (includes admin setup)  
**Mock Data**: ❌ Missing - **NEEDS CREATION** (simulated ADO responses)  
**Ideal For**: Engineering teams, scrum masters, product managers  

**What You'll Learn**:
- Understanding Copilot connectors vs Power Platform connectors
- Admin prerequisites for connector enablement
- Scoping connector data (area path, project)
- Connector indexing and sync behavior

---

### 09 - ServiceNow Connector Agent
**Purpose**: IT Service Desk Assistant  
**Primary Feature**: Microsoft 365 Copilot connectors (ServiceNow)  
**Business Use Case**: IT support KB, ticket status, service catalog requests  
**Key Learning**: Connector authentication, user criteria flows, ServiceNow integration  
**Time Required**: 10-15 minutes (includes admin setup)  
**Mock Data**: ❌ Missing - **NEEDS CREATION** (simulated ServiceNow KB/tickets)  
**Ideal For**: IT support, help desk, employees seeking IT assistance  

**What You'll Learn**:
- ServiceNow Knowledge, Catalog, and Tickets connectors
- Simple vs Advanced user criteria flows
- OAuth 2.0 vs Basic Authentication
- Scoping by knowledge base, catalog, entity type

---

### 10 - Enterprise Websites Connector Agent
**Purpose**: Company Intranet Assistant  
**Primary Feature**: Microsoft 365 Copilot connectors (Enterprise Websites)  
**Business Use Case**: Internal intranet search, corporate portal access, internal wiki search  
**Key Learning**: Internal website crawling, authentication options, network configuration  
**Time Required**: 10-15 minutes (includes admin setup)  
**Mock Data**: ❌ Missing - **NEEDS CREATION** (simulated intranet content)  
**Ideal For**: All employees, HR, IT, facilities  

**What You'll Learn**:
- Crawling internal websites vs SharePoint
- Authentication methods (Anonymous, Basic, Windows, OAuth)
- Network configuration (firewall, proxy)
- Crawl depth and include/exclude patterns

---

### 11 - Code Interpreter Agent
**Purpose**: Data Analysis Assistant  
**Primary Feature**: Code Interpreter capability (Python execution)  
**Business Use Case**: Data analysis, chart creation, statistical calculations, synthetic data generation  
**Key Learning**: Python code execution, data file processing, visualization creation  
**Time Required**: 8-10 minutes  
**Mock Data**: ❌ Missing - **NEEDS CREATION** (CSV/Excel datasets)  
**Ideal For**: Analysts, data scientists, business intelligence teams  

**What You'll Learn**:
- Enabling Code Interpreter capability
- Uploading data files (Excel, CSV, JSON)
- Generating charts and visualizations
- Viewing and copying Python code
- File size limits (512MB, 30MB for Excel)

---

### 12 - Image Generator Agent
**Purpose**: Visual Content Creator  
**Primary Feature**: Image Generator capability (Designer/DALL-E)  
**Business Use Case**: Marketing visuals, social media graphics, presentation images, concept art  
**Key Learning**: AI image generation, style control, iterative refinement  
**Time Required**: 8-12 minutes  
**Mock Data**: ✅ N/A (generates images on demand)  
**Ideal For**: Marketing teams, content creators, designers  

**What You'll Learn**:
- Enabling Image Generator capability
- Generating 4 image variations per prompt
- Iterative refinement with follow-up prompts
- Downloading and sharing generated images
- Content credentials for AI-generated images

---

### 13 - Data Analysis Agent
**Purpose**: Business Intelligence Analyst  
**Primary Feature**: Multi-capability (Code Interpreter + SharePoint + Files)  
**Business Use Case**: Comprehensive data analysis with business context from documents  
**Key Learning**: Combining multiple capabilities, multi-source analysis, end-to-end analytics workflow  
**Time Required**: 15-20 minutes  
**Mock Data**: ❌ Missing - **NEEDS CREATION** (comprehensive datasets)  
**Ideal For**: Business analysts, finance teams, operations managers  

**What You'll Learn**:
- Combining Code Interpreter with knowledge sources
- Analyzing data while referencing business documents
- Multi-step analytical workflows
- Generating dashboards and reports

---

### 14 - Marketing Content Agent
**Purpose**: Marketing Content Creator  
**Primary Feature**: Multi-capability (Image Generator + Web Search + SharePoint)  
**Business Use Case**: Creating brand-aligned visuals with trend research and brand guidelines  
**Key Learning**: Combining visual creation with research and brand standards  
**Time Required**: 15-20 minutes  
**Mock Data**: ❌ Missing - **NEEDS CREATION** (brand guidelines)  
**Ideal For**: Marketing teams, social media managers, brand designers  

**What You'll Learn**:
- Combining Image Generator with web research
- Referencing brand guidelines from SharePoint
- Researching trends before creating visuals
- Creating channel-specific content (LinkedIn, Instagram, etc.)

---

### 15 - All Features Showcase Agent
**Purpose**: Ultimate Project Assistant  
**Primary Feature**: ALL capabilities and knowledge sources combined  
**Business Use Case**: Comprehensive project management with research, analysis, and content creation  
**Key Learning**: Maximum capability agent, when to use everything, configuration complexity  
**Time Required**: 20-25 minutes  
**Mock Data**: ⚠️ Partial - **NEEDS COMPREHENSIVE SET**  
**Ideal For**: Project managers, executives, power users  

**What You'll Learn**:
- Combining all knowledge sources and capabilities
- Managing complexity in agent configuration
- Trade-offs between comprehensiveness and response time
- Advanced agent design patterns

---

## Mock Data Files Status

### ✅ Complete Mock Data

| Demo | Files | Status |
|------|-------|--------|
| 01 - SharePoint Files | 5 policy documents | ✅ Complete |
| 04 - Public Website | N/A (uses real URLs) | ✅ N/A |
| 05 - Web Search | N/A (uses real-time web) | ✅ N/A |
| 12 - Image Generator | N/A (generates on demand) | ✅ N/A |

### ⚠️ Partial Mock Data

| Demo | Current Files | Missing Files | Priority |
|------|--------------|---------------|----------|
| 02 - Teams Meetings | 1 transcript | 4 more transcripts, chat logs | HIGH |
| 15 - All Features | Some files | Comprehensive set | HIGH |

### ❌ Missing Mock Data (NEEDS CREATION)

| Demo | Required Files | Priority |
|------|----------------|----------|
| 03 - Email Intelligence | Email thread examples (5 files) | HIGH |
| 06 - Scoped Source | Compliance policy docs (3-5 files) | MEDIUM |
| 07 - People Directory | Employee directory CSV | MEDIUM |
| 08 - Azure DevOps | Simulated work items/wiki (5 files) | MEDIUM |
| 09 - ServiceNow | Simulated KB/tickets (7 files) | MEDIUM |
| 10 - Enterprise Websites | Simulated intranet pages (7 files) | MEDIUM |
| 11 - Code Interpreter | Data files: CSV/Excel (5 files) | HIGH |
| 13 - Data Analysis | Comprehensive datasets (7 files) | HIGH |
| 14 - Marketing Content | Brand guidelines package (7 files) | MEDIUM |

---

## Getting Started

### Prerequisites

1. **Microsoft 365 Copilot Access**
   - microsoft365.com/chat or office.com/chat
   - Microsoft 365 Copilot license (for full features)

2. **Permissions**
   - Ability to create agents (not admin blocked)
   - Access to demo data sources (if using SharePoint)

3. **Time Commitment**
   - Simple demos: 5-10 minutes
   - Connector demos: 10-15 minutes (requires admin setup)
   - Multi-capability demos: 15-25 minutes

### Quick Start Workflow

1. **Browse Demo Catalog** (above) - Find demo matching your use case
2. **Navigate to Demo Folder** - e.g., `01-sharepoint-files-agent/`
3. **Read README.md** - Complete configuration and demo script
4. **Prepare Mock Data** - Upload files or configure knowledge sources
5. **Create Agent** - Copy configuration from README
6. **Run Demo Script** - Follow step-by-step demo flow
7. **Customize** - Adapt to your specific needs

---

## Demo Selection Guide

### By Experience Level

**Beginner (Start Here)**:
1. Demo 01 - SharePoint Files Agent
2. Demo 05 - Web Search Agent
3. Demo 12 - Image Generator Agent

**Intermediate**:
1. Demo 02 - Teams Meetings Agent
2. Demo 11 - Code Interpreter Agent
3. Demo 06 - Scoped Source Agent

**Advanced**:
1. Demo 13 - Data Analysis Agent (multi-capability)
2. Demo 14 - Marketing Content Agent (multi-capability)
3. Demo 15 - All Features Showcase (comprehensive)

### By Business Role

**HR Professionals**:
- Demo 01 - SharePoint Files (policy guidance)
- Demo 07 - People Directory (expert finding)
- Demo 06 - Scoped Source (compliance-safe answers)

**Sales Teams**:
- Demo 03 - Email Intelligence (client communications)
- Demo 02 - Teams Meetings (sales call notes)
- Demo 12 - Image Generator (pitch visuals)

**Marketing Teams**:
- Demo 12 - Image Generator (visual content)
- Demo 14 - Marketing Content (brand-aligned creation)
- Demo 05 - Web Search (trend research)

**Data Analysts**:
- Demo 11 - Code Interpreter (data analysis)
- Demo 13 - Data Analysis (comprehensive analytics)

**Engineering Teams**:
- Demo 08 - Azure DevOps (work item tracking)
- Demo 04 - Public Website (documentation search)
- Demo 11 - Code Interpreter (code generation)

**IT Support**:
- Demo 09 - ServiceNow (ticket/KB integration)
- Demo 10 - Enterprise Websites (intranet search)
- Demo 01 - SharePoint Files (KB articles)

**Project Managers**:
- Demo 02 - Teams Meetings (decision tracking)
- Demo 15 - All Features (comprehensive support)
- Demo 13 - Data Analysis (project metrics)

**Executives**:
- Demo 15 - All Features Showcase (comprehensive assistant)
- Demo 03 - Email Intelligence (communication tracking)
- Demo 05 - Web Search (market intelligence)

### By Feature Type

**Knowledge Sources Only**:
- Demo 01 - SharePoint Files
- Demo 02 - Teams Meetings & Chats
- Demo 03 - Email Intelligence
- Demo 04 - Public Websites

**Knowledge Toggles**:
- Demo 05 - Web Search
- Demo 06 - Scoped Sources
- Demo 07 - People Directory

**Copilot Connectors** (Requires Admin):
- Demo 08 - Azure DevOps
- Demo 09 - ServiceNow
- Demo 10 - Enterprise Websites

**Capabilities**:
- Demo 11 - Code Interpreter
- Demo 12 - Image Generator

**Multi-Capability**:
- Demo 13 - Code Interpreter + SharePoint + Files
- Demo 14 - Image Generator + Web Search + SharePoint
- Demo 15 - Everything Combined

---

## Next Steps

### For Demo Completion

**Priority 1 - High Priority Mock Data**:
1. Create email thread examples (Demo 03)
2. Create Teams meeting transcripts (Demo 02)
3. Create data analysis files (Demos 11, 13)

**Priority 2 - Medium Priority Mock Data**:
1. Create connector simulations (Demos 08, 09, 10)
2. Create compliance docs (Demo 06)
3. Create brand guidelines (Demo 14)
4. Create employee directory (Demo 07)

**Priority 3 - Testing & Refinement**:
1. Test each demo with real users
2. Gather feedback and refine
3. Update based on Agent Builder changes
4. Add video walkthroughs

### For Production Use

1. **Replace Mock Data** - Use real SharePoint, Teams, email sources
2. **Customize Instructions** - Adapt to your organization's needs
3. **Add Real Connectors** - Work with admin to enable connectors
4. **Test Thoroughly** - Validate with actual users and use cases
5. **Monitor Usage** - Track which agents are most valuable
6. **Iterate** - Continuously improve based on feedback

---

## Support & Resources

### Microsoft Learn Documentation
- Agent Builder: https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite
- Knowledge Sources: https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge
- Code Interpreter: https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/code-interpreter
- Image Generator: https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/image-generator

### Community
- Microsoft Tech Community: https://techcommunity.microsoft.com/
- Microsoft 365 Copilot Blog: https://www.microsoft.com/microsoft-365/blog/copilot/

---

**Version**: 1.0  
**Last Updated**: November 28, 2024  
**Status**: 5/15 demos have complete mock data, 10 demos need mock data creation
