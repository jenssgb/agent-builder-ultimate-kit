# Agent Builder Ultimate Kit

**16 ready-to-use demos** for Microsoft 365 Copilot Agent Builder with complete configurations, mock data, and step-by-step guides.

> 🚀 **NEW:** Automated SharePoint setup script! See [Quick Start](#quick-start) below.

---

## 📋 Table of Contents

1. [Complete Feature Coverage](#-complete-feature-coverage)
2. [Quick Start](#quick-start)
3. [All 16 Demos](#all-16-demos)
4. [Demo Details & Learning Objectives](#demo-details--learning-objectives)
5. [What's Included](#whats-included)
6. [Pick Your Starting Point](#pick-your-starting-point)
7. [Key Info & Limits](#key-info)
8. [Tips for Better Agents](#tips)

---

## 🎯 Complete Feature Coverage

This kit demonstrates **every Agent Builder capability**:

![Agent Builder UI](https://raw.githubusercontent.com/jenssgb/agent-builder-ultimate-kit/main/.github/agent-builder-ui.png)

### 📚 Knowledge

**Internal Knowledge** *(Requires M365 Copilot License or PAYGO)*
- 📁 SharePoint → **Demo 01** | HR policy assistant
- 👥 Teams → **Demo 02** | Meeting transcripts & chats
- 📧 Outlook → **Demo 03** | Email search
- 👤 People directory → **Demo 07** | Employee directory
- 🔌 **Copilot Connectors:**
  - 🔴 Azure DevOps → **Demo 08** | Work items & wiki
  - 🔵 ServiceNow → **Demo 09** | IT support KB & tickets
  - 🌐 Enterprise Websites → **Demo 10** | Internal intranets

**External Knowledge** *(No License Required)*
- 🌐 Public websites (scoped) → **Demo 04** | Up to 4 public URLs
- 🔍 Web search (all websites) → **Demo 05** | Real-time Bing search

**Knowledge Controls**
- 🔒 Only use specified sources → **Demo 06** | Compliance mode

---

### ⚡ Capabilities

**📊 Code Interpreter** *(No License Required)*
- *Analyze data, create charts, generate code*
- **Demo 11** | Data analysis with Python
- **Demo 16** | Office document generation (Word, Excel, PowerPoint)

**🎨 Image Generator** *(No License Required)*
- *Create AI-generated images and art*
- **Demo 12** | AI image creation

---

### 🚀 Multi-Capability Combinations *(Requires M365 Copilot License or PAYGO)*

**Combining Capabilities + Internal Knowledge**
- **Demo 13** | Code Interpreter + SharePoint + Files
- **Demo 14** | Image Generator + Web + SharePoint
- **Demo 15** | All features combined

---

## Quick Start

### Option A: Automated Setup (Recommended)
```powershell
# 1. Clone this repo
git clone https://github.com/jenssgb/agent-builder-ultimate-kit.git
cd agent-builder-ultimate-kit

# 2. Run SharePoint setup (uploads all mock data)
.\setup-sharepoint.ps1
```
See [SETUP-GUIDE.md](SETUP-GUIDE.md) for details.

### Option B: Manual Demo
1. **Pick a demo** from the list below
2. **Open its folder** (e.g., `01-sharepoint-files-agent/`)
3. **Read the README** - has everything you need
4. **Go to** [microsoft365.com/chat](https://microsoft365.com/chat)
5. **Click "Create agent"** and copy the config from the README
6. **Test it!**

---

## All 16 Demos

| # | Demo | What It Does | Time | Mock Data |
|---|------|--------------|------|-----------|
| **01** | **SharePoint Files** | HR policy assistant, searches company documents | 5 min | ✅ 5 files |
| **02** | **Teams Meetings** | Searches meeting transcripts and team chats | 7 min | ✅ 5 files |
| **03** | **Email Intelligence** | Finds info from your email history | 5 min | ✅ 5 files |
| **04** | **Public Websites** | Researches documentation and public sites | 6 min | ✅ N/A (uses live URLs) |
| **05** | **Web Search** | Real-time web search for current info | 5 min | ✅ N/A (uses Bing) |
| **06** | **Scoped Source** | Compliance-safe, only uses approved sources | 5 min | ✅ 4 files |
| **07** | **People Directory** | Finds employees and expertise in your org | 5 min | ✅ 1 CSV |
| **08** | **Azure DevOps** | Searches work items and wiki (requires admin) | 10 min | ✅ 2 files |
| **09** | **ServiceNow** | IT support KB and tickets (requires admin) | 10 min | ✅ 2 files |
| **10** | **Enterprise Websites** | Internal intranet search (requires admin) | 10 min | ✅ 1 file |
| **11** | **Code Interpreter** | Analyzes data, creates charts with Python | 8 min | ✅ 5 CSV files |
| **12** | **Image Generator** | Creates AI images and graphics | 8 min | ✅ N/A (generates images) |
| **13** | **Data Analysis** | Code Interpreter + documents (multi-source) | 15 min | ✅ 7 CSV files |
| **14** | **Marketing Content** | Image Generator + web search + brand guide | 15 min | ✅ 7 brand files |
| **15** | **All Features** | Everything combined - ultimate assistant | 20 min | ✅ Uses other demos |
| **16** | **Office Document Generator** | Creates Word, Excel, PowerPoint files | 10 min | ✅ 3 files |

---

## What's Included

Each demo folder has:
- **README.md** - Complete agent config, demo script, step-by-step guide
- **mock-data/** - Sample files to test with (policies, datasets, brand guides, etc.)

---

## Demo Details & Learning Objectives

### 01 - SharePoint Files Agent
**Purpose**: Policy & Procedure Guide  
**What You'll Learn**: Adding SharePoint sites/folders, document permissions, citing sources, compliance mode  
**Business Use Case**: HR policy assistant, compliance document search, employee handbook  
**Time**: 5-7 minutes | **Mock Data**: ✅ Complete (5 policy files)

### 02 - Teams Meetings & Chats Agent
**Purpose**: Project Memory Assistant  
**What You'll Learn**: Teams channels (max 5), meeting transcripts, chat history, speaker attribution  
**Business Use Case**: Project decision tracking, meeting recap, action item retrieval  
**Time**: 7-10 minutes | **Mock Data**: ✅ Complete (5 transcripts)

### 03 - Email Intelligence Agent
**Purpose**: Email Research Assistant  
**What You'll Learn**: "My emails" toggle, personal mailbox search, privacy implications, limitations  
**Business Use Case**: Finding past conversations, tracking commitments, locating attachments  
**Time**: 5-7 minutes | **Mock Data**: ✅ Complete (5 email threads)

### 04 - Public Website Research Agent
**Purpose**: Tech News & Docs Researcher  
**What You'll Learn**: Public URLs (max 4), crawl depth, URL requirements, multi-source comparison  
**Business Use Case**: Documentation search, competitor research, industry news  
**Time**: 6-8 minutes | **Mock Data**: ✅ N/A (uses live URLs)

### 05 - Web Search Agent
**Purpose**: Current Events Researcher  
**What You'll Learn**: Real-time web search toggle, combining with internal sources, citation dates  
**Business Use Case**: Breaking news, industry trends, current information  
**Time**: 5-7 minutes | **Mock Data**: ✅ N/A (uses Bing)

### 06 - Scoped Source Agent
**Purpose**: Compliance Policy Assistant  
**What You'll Learn**: "Only use specified sources" toggle, strict compliance, fallback behavior  
**Business Use Case**: Compliance-safe answers, regulated industries, policy guidance  
**Time**: 5-7 minutes | **Mock Data**: ✅ Complete (5 compliance docs)

### 07 - People Directory Agent
**Purpose**: Expert Finder & Org Navigator  
**What You'll Learn**: People directory search, finding expertise, respecting privacy  
**Business Use Case**: Finding SMEs, org chart navigation, contact discovery  
**Time**: 5-7 minutes | **Mock Data**: ✅ Complete (employee CSV)

### 08 - Azure DevOps Connector Agent
**Purpose**: DevOps Work Tracker  
**What You'll Learn**: Admin-enabled connectors, scoping by area path, connector setup  
**Business Use Case**: Work item tracking, sprint progress, wiki documentation  
**Time**: 10-15 minutes | **Mock Data**: ✅ Complete (3 ADO files)

### 09 - ServiceNow Connector Agent
**Purpose**: IT Service Desk Assistant  
**What You'll Learn**: Connector authentication, user criteria flows, ServiceNow integration  
**Business Use Case**: IT support KB, ticket status, service catalog  
**Time**: 10-15 minutes | **Mock Data**: ✅ Complete (2 ServiceNow files)

### 10 - Enterprise Websites Connector Agent
**Purpose**: Company Intranet Assistant  
**What You'll Learn**: Internal website crawling, authentication options, network config  
**Business Use Case**: Intranet search, corporate portal access, internal wiki  
**Time**: 10-15 minutes | **Mock Data**: ✅ Complete (1 intranet file)

### 11 - Code Interpreter Agent
**Purpose**: Data Analysis Assistant  
**What You'll Learn**: Python execution, data file processing, chart creation, code viewing  
**Business Use Case**: Data analysis, statistical calculations, visualizations  
**Time**: 8-10 minutes | **Mock Data**: ✅ Complete (5 CSV files)

### 12 - Image Generator Agent
**Purpose**: Visual Content Creator  
**What You'll Learn**: AI image generation (Designer/DALL-E), style control, iterative refinement  
**Business Use Case**: Marketing visuals, social media graphics, presentation images  
**Time**: 8-12 minutes | **Mock Data**: ✅ N/A (generates on demand)

### 13 - Data Analysis Agent
**Purpose**: Business Intelligence Analyst  
**What You'll Learn**: Multi-capability (Code Interpreter + SharePoint + Files), multi-source analysis  
**Business Use Case**: Comprehensive data analysis with business context  
**Time**: 15-20 minutes | **Mock Data**: ✅ Complete (7 datasets)

### 14 - Marketing Content Agent
**Purpose**: Marketing Content Creator  
**What You'll Learn**: Multi-capability (Image Generator + Web + SharePoint), brand-aligned creation  
**Business Use Case**: Creating brand-aligned visuals with trend research  
**Time**: 15-20 minutes | **Mock Data**: ✅ Complete (7 brand files)

### 15 - All Features Showcase Agent
**Purpose**: Ultimate Project Assistant  
**What You'll Learn**: Combining ALL capabilities, managing complexity, advanced patterns  
**Business Use Case**: Comprehensive project management with research & analysis  
**Time**: 20-25 minutes | **Mock Data**: ✅ Complete (uses other demos)

### 16 - Office Document Generator Agent
**Purpose**: Office File Creator  
**What You'll Learn**: Code Interpreter for Word/Excel/PowerPoint generation, professional formatting  
**Business Use Case**: Business reports, data dashboards, presentation generation  
**Time**: 10 minutes | **Mock Data**: ✅ Complete (3 files)

---

## Pick Your Starting Point

### By Experience Level

**Beginner (Start Here)**:
- **Demo 01** - SharePoint Files (simplest example)
- **Demo 05** - Web Search (no setup needed)
- **Demo 12** - Image Generator (fun & visual)

**Intermediate**:
- **Demo 02** - Teams Meetings (collaboration)
- **Demo 11** - Code Interpreter (data analysis)
- **Demo 06** - Scoped Source (compliance)

**Advanced**:
- **Demo 13** - Data Analysis (multi-capability)
- **Demo 14** - Marketing Content (multi-capability)
- **Demo 15** - All Features (comprehensive)

### By Business Role

**HR Professionals**: Demos 01, 06, 07  
**Sales Teams**: Demos 02, 03, 12  
**Marketing Teams**: Demos 05, 12, 14  
**Data Analysts**: Demos 11, 13, 16  
**Engineering Teams**: Demos 08, 04, 11  
**IT Support**: Demos 09, 10, 01  
**Project Managers**: Demos 02, 15, 13  
**Executives**: Demos 15, 03, 05

### By Feature Type

**Knowledge Sources**: Demos 01-04  
**Knowledge Toggles**: Demos 05-07  
**Copilot Connectors** (Admin): Demos 08-10  
**Capabilities**: Demos 11, 12, 16  
**Multi-Capability**: Demos 13-15

---

## What's Included

Each demo folder contains:
- **README.md** - Complete agent configuration, demo script, troubleshooting
- **mock-data/** - Sample files for testing (policies, datasets, brand guides, etc.)

**Repository structure:**
```
agent-builder-ultimate-kit/
├── README.md (this file)
├── SETUP-GUIDE.md (SharePoint automation guide)
├── setup-sharepoint.ps1 (automated deployment)
├── 01-sharepoint-files-agent/
│   ├── README.md
│   └── mock-data/ (5 policy files)
├── 02-teams-meetings-chats-agent/
│   ├── README.md
│   └── mock-data/ (5 transcripts)
... (14 more demo folders)
└── .github/
    └── agent-builder-ui.png (UI reference)
```

---

## Key Info

### Agent Builder Limits
- **Name**: 30 characters max
- **Description**: 1,000 characters max
- **Instructions**: 8,000 characters max
- **Embedded files**: 20 files max (512MB each, 30MB for Excel)
- **SharePoint**: 100 files max total
- **Public websites**: 4 URLs max
- **Teams**: 5 specific chats OR all chats

### License Requirements

**No License Required** *(Free)*:
- ✅ Code Interpreter
- ✅ Image Generator
- ✅ Web search (all websites)
- ✅ Public websites (scoped)
- ✅ Embedded files

**M365 Copilot License or PAYGO Required**:
- 📧 Email search (My emails)
- 👥 Teams search (chats & meetings)
- 📁 SharePoint
- 👤 People directory
- 🔌 Copilot Connectors (Azure DevOps, ServiceNow, Enterprise Websites)

---

## Tips

### Make Agents Work Better
- ✅ Write **clear descriptions** - Helps Copilot know when to invoke your agent
- ✅ Add **specific instructions** - Define tone, format, citation requirements
- ✅ **Minimize knowledge sources** - Only add what you need (more = slower responses)
- ✅ **Test with starter prompts** - Validate behavior before sharing
- ✅ **Use scoped sources** - For compliance-critical scenarios
- ✅ **Cite sources explicitly** - Add to instructions: "Always cite document names"

### Common Pitfalls to Avoid
- ❌ Too many knowledge sources (slows response time)
- ❌ Vague descriptions (Copilot won't know when to use agent)
- ❌ No starter prompts (users don't know what to ask)
- ❌ Missing instructions (agent behavior unclear)
- ❌ Not testing edge cases (what if source has no answer?)

### Troubleshooting
- **Not finding info?** Check permissions to sources, verify files uploaded
- **Slow responses?** Too many knowledge sources - remove unnecessary ones
- **No citations?** Add "Always cite sources with document names" to instructions
- **Wrong knowledge?** Use "Only use specified sources" toggle for compliance

---

## Learn More

**Official Documentation:**
- [Agent Builder Overview](https://learn.microsoft.com/microsoft-365-copilot/extensibility/copilot-studio-lite)
- [Knowledge Sources](https://learn.microsoft.com/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge)
- [Code Interpreter](https://learn.microsoft.com/microsoft-365-copilot/extensibility/code-interpreter)
- [Image Generator](https://learn.microsoft.com/microsoft-365-copilot/extensibility/image-generator)

**Community:**
- [Microsoft Tech Community](https://techcommunity.microsoft.com/)
- [M365 Copilot Blog](https://www.microsoft.com/microsoft-365/blog/copilot/)

---

**Repository:** [github.com/jenssgb/agent-builder-ultimate-kit](https://github.com/jenssgb/agent-builder-ultimate-kit)  
**Last Updated:** November 2025 | All mock data is fictional for demo purposes only