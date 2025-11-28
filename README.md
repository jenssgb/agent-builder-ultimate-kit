# Agent Builder Ultimate Kit

**15 ready-to-use demos** for Microsoft 365 Copilot Agent Builder with complete configurations, mock data, and step-by-step guides.

---

## 🎯 Complete Feature Coverage

This kit demonstrates **every Agent Builder capability**:

![Agent Builder UI](https://raw.githubusercontent.com/jenssgb/agent-builder-ultimate-kit/main/.github/agent-builder-ui.png)

### Knowledge
*Choose the sources your agent will use to generate responses*

| UI Feature | Demo | Use Case |
|------------|------|----------|
| **📁 Add files, meetings, chats, emails, and websites** | | |
| → SharePoint | Demo 01 | HR policy assistant, searches company documents |
| → Teams | Demo 02 | Searches meeting transcripts and team chats |
| → Outlook | Demo 03 | Finds info from your email history |
| → Web | Demo 04 | Researches documentation and public sites |
| **🔍 Search all websites** | Demo 05 | Real-time web search for current info |
| **🔒 Only use specified sources** | Demo 06 | Compliance-safe, only uses approved sources |
| **👤 Reference people in organization** | Demo 07 | Finds employees and expertise in your org |
| **🔌 Add other data sources** | | |
| → Azure DevOps | Demo 08 | Searches work items and wiki (requires admin) |
| → ServiceNow | Demo 09 | IT support KB and tickets (requires admin) |
| → Enterprise Websites | Demo 10 | Internal intranet search (requires admin) |

### Capabilities

| UI Feature | Demo | Use Case |
|------------|------|----------|
| **📊 Create documents, charts, and code** | | |
| *Analyze data, graph math equations, and create code snippets, Word, Excel, and PowerPoint files* | | |
| 📄 Word \| 📊 Excel \| 📽️ PowerPoint | Demo 11 | Analyzes data, creates charts with Python |
| | Demo 13 | Code Interpreter + documents (multi-source) |
| **🎨 Create images** | | |
| *Create visual aids like images and art in response to user prompts* | | |
| | Demo 12 | Creates AI images and graphics |
| | Demo 14 | Image Generator + web search + brand guide |

### 🚀 Advanced Combinations
| Demo | Features Combined |
|------|-------------------|
| Demo 13 | Code Interpreter + SharePoint + Files |
| Demo 14 | Image Generator + Web Search + SharePoint |
| Demo 15 | **All features** - ultimate assistant |

---

## Quick Start

1. **Pick a demo** from the list below
2. **Open its folder** (e.g., `01-sharepoint-files-agent/`)
3. **Read the README** - has everything you need
4. **Go to** [microsoft365.com/chat](https://microsoft365.com/chat)
5. **Click "Create agent"** and copy the config from the README
6. **Test it!**

---

## All 15 Demos

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

---

## What's Included

Each demo folder has:
- **README.md** - Complete agent config, demo script, step-by-step guide
- **mock-data/** - Sample files to test with (policies, datasets, brand guides, etc.)

---

## Pick Your Starting Point

**Never used Agent Builder?**
→ Start with **Demo 01** (SharePoint Files) - simplest example

**Need specific features?**
- Search documents → Demo 01, 02, 03
- Analyze data → Demo 11, 13
- Create images → Demo 12, 14
- Real-time web search → Demo 05
- IT/HR support → Demo 06, 09
- Everything → Demo 15

**By role:**
- **HR** → 01, 06, 07
- **Sales** → 02, 03, 12
- **Marketing** → 05, 12, 14
- **Analysts** → 11, 13
- **IT** → 08, 09, 10
- **Managers** → 02, 15

---

## File Structure

```
agent-builder-demo-cases/
├── README.md (this file)
├── 01-sharepoint-files-agent/
│   ├── README.md (agent config + demo script)
│   └── mock-data/
│       ├── employee-handbook-2024.txt
│       ├── remote-work-policy.txt
│       ├── benefits-guide-2024.txt
│       ├── expense-reimbursement-sop.txt
│       └── code-of-conduct.txt
└── ... (and 14 more demo folders)
```

---

## Key Info

**Agent Builder Limits:**
- Name: 30 characters
- Description: 1,000 characters  
- Instructions: 8,000 characters
- Knowledge sources: 20 files max (512MB each, 30MB for Excel)
- SharePoint: 100 files max total
- Public websites: 4 URLs max
- Teams: 5 specific chats OR all chats

**No license needed for:**
- ✅ Code Interpreter
- ✅ Image Generator  
- ✅ Web search

**Copilot license needed for:**
- 📧 Email search
- 👥 Teams search
- 👤 People directory
- 🔌 Connectors (Azure DevOps, ServiceNow, etc.)

---

## Tips

**Make agents work better:**
- Write clear descriptions (helps LLM know when to use your agent)
- Add specific instructions (tone, format, citation requirements)
- Only add knowledge sources you need (more = slower)
- Test with starter prompts first

**Common issues:**
- Not finding info? Check you have permissions to the sources
- Slow? Too many knowledge sources - remove what you don't need
- No citations? Add "Always cite sources" to instructions

---

## Learn More

**Official docs:** [learn.microsoft.com/microsoft-365-copilot/extensibility](https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite)

---

**Last Updated:** November 2025 | All mock data is fictional for demo purposes