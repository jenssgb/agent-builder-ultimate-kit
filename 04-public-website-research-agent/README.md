# Public Website Research Agent

**Demo Focus**: Demonstrates how to add public websites as knowledge sources (up to 4 URLs)

---

## Agent Builder Configuration

### 1. Name
```
Tech News & Docs Researcher
```
*Character limit: 30. Actual length: 27*

### 2. Description
```
Helps you research information from specific technology websites and documentation portals. Searches designated public websites including Microsoft Learn, GitHub docs, Stack Overflow, and tech blogs to answer technical questions, find code examples, and explain concepts. Ideal for developers, IT professionals, and technical teams who need quick access to documentation and best practices from trusted sources without manually searching multiple sites. Scoped to specific URLs for accuracy and relevance.
```
*Character limit: 1,000. Actual length: 490*

### 3. Instructions
```
You are an agent that helps users research information from specific technology websites and documentation. You search through designated public websites to answer technical questions and provide reliable information.

Your behavior:
- Always cite the specific website and URL where information was found
- Provide direct links to source pages
- Quote relevant sections from documentation
- Explain technical concepts clearly
- Include code examples when available
- Compare information across sources when relevant
- Indicate if information may be outdated (check publication dates)
- Recommend which source to trust for specific topics
- Be clear when information is not found in the specified sources

Your tone: Technical, accurate, helpful, and educational.
```
*Character limit: 8,000. Actual length: 684*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required Public Website Sources (up to 4 URLs):
- **Public website**: `https://learn.microsoft.com/en-us/azure/`
- **Public website**: `https://docs.github.com/en`
- **Public website**: `https://stackoverflow.com/questions/tagged/azure`
- **Public website**: `https://techcommunity.microsoft.com/`

**URL Requirements**:
- Must be publicly accessible (no authentication required)
- Agent crawls up to 2 levels deep from provided URL
- No query parameters allowed in URLs
- Maximum 4 websites total

#### Optional Sources:
- **Embedded files**: Upload additional reference docs, guides
- **SharePoint folders**: Internal documentation

#### Toggles:
- ☐ **Search all websites**: Disabled (use specific URLs only)
- ☑ **Only use specified sources**: Enabled (trust only specified sites)

### 5. Capabilities

- ☐ **Create documents, charts, and code** (Code Interpreter) - Not needed
- ☐ **Create images** (Image Generator) - Not needed

### 6. Starter Prompts

1. "How do I deploy an Azure Function?"
2. "Explain GitHub Actions workflow syntax"
3. "What are best practices for Azure Key Vault?"
4. "Find code examples for authentication in ASP.NET Core"
5. "How do I troubleshoot Azure App Service errors?"
6. "What's the difference between Azure Storage types?"
7. "Show me GitHub branch protection rules"
8. "Explain Azure pricing for virtual machines"
9. "How do I set up CI/CD pipeline in Azure DevOps?"
10. "What are the latest Azure Kubernetes features?"

---

## Mock Data Files

This demo uses REAL public websites (no mock files needed):

### Live Sources Used:
1. **Microsoft Learn** - Official Microsoft documentation
2. **GitHub Docs** - GitHub product documentation
3. **Stack Overflow** - Q&A with Azure tag
4. **Microsoft Tech Community** - Blogs and discussions

---

## Demo Script

### Setup (2 minutes)
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Click Website icon (🌐)
   - Add URL 1: `https://learn.microsoft.com/en-us/azure/`
   - Click "+" to add more
   - Add URL 2: `https://docs.github.com/en`
   - Add URL 3: `https://stackoverflow.com/questions/tagged/azure`
   - Add URL 4: `https://techcommunity.microsoft.com/`
5. Toggle **"Only use specified sources"** to ON
6. Add the 10 Starter Prompts
7. Click **"Create"** to save the agent

### Demo Flow (7 minutes)

**Step 1: Azure Documentation Query**
- **Ask**: "How do I deploy an Azure Function?"
- **Expected**: Agent provides step-by-step deployment guide from Microsoft Learn with direct link to article, includes CLI commands and portal instructions

**Step 2: GitHub Documentation Query**
- **Ask**: "Explain GitHub Actions workflow syntax"
- **Expected**: Agent explains YAML workflow syntax from GitHub Docs, provides example workflow file, cites specific documentation page

**Step 3: Cross-Source Comparison**
- **Ask**: "What are best practices for Azure Key Vault?"
- **Expected**: Agent combines guidance from Microsoft Learn (official best practices) and Stack Overflow (real-world tips), noting which source provides which advice

**Step 4: Code Example Request**
- **Ask**: "Find code examples for authentication in ASP.NET Core"
- **Expected**: Agent provides code snippets from Microsoft Learn docs with explanations, includes links to full tutorials

**Step 5: Troubleshooting Question**
- **Ask**: "How do I troubleshoot Azure App Service errors?"
- **Expected**: Agent provides troubleshooting steps from Microsoft Learn and common solutions from Stack Overflow, organizes by error type

**Step 6: Latest Features**
- **Ask**: "What are the latest Azure Kubernetes features?"
- **Expected**: Agent finds recent announcements from Microsoft Tech Community blog, notes publication dates, summarizes key features

### Key Demonstration Points:
✅ Agent searches up to 4 specific public websites  
✅ Citations include website name and URLs  
✅ Accurate information from trusted sources  
✅ Code examples and technical details  
✅ Combines information across sources  
✅ Provides direct links for further reading  

---

## Expected Behavior

### What Works:
- Searching specific websites (up to 4)
- Technical documentation lookups
- Finding code examples and tutorials
- Comparing information across sources
- Recent blog posts and announcements
- Best practices and troubleshooting guides

### What Doesn't Work:
- Searching websites not in the list (if "Only use specified sources" enabled)
- Real-time web search across all internet
- Accessing sites behind authentication
- Downloading or executing code
- Interactive tutorials

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ❌ | Optional |
| Teams chats | ❌ | Not needed |
| My emails | ❌ | Not needed |
| Public websites | ✅ | **Primary feature** - add up to 4 URLs |
| Embedded files | ❌ | Optional |
| Web search | ❌ | Disabled (using specific URLs instead) |
| Only use specified sources | ✅ | **Enabled** to trust only listed sites |
| People directory | ❌ | Not needed |
| Code Interpreter | ❌ | Not needed |
| Image Generator | ❌ | Not needed |

---

## Important Notes

### Public Website Requirements:
- **Maximum 4 URLs**: Can add up to 4 public website sources
- **Crawl depth**: Agent crawls 2 levels deep from provided URL
- **No auth**: Websites must be publicly accessible (no login required)
- **No query parameters**: URLs like `example.com?page=1` not supported
- **Updates**: Agent may cache content, not always real-time

### URL Examples:
✅ `https://learn.microsoft.com/en-us/azure/` - Documentation section  
✅ `https://docs.github.com/en` - Entire docs site  
✅ `https://techcommunity.microsoft.com/` - Blog/community site  
❌ `https://private-site.com` - Requires authentication  
❌ `https://example.com/page?id=123` - Has query parameters  

### License Requirements:
- **Public websites**: Requires Microsoft 365 Copilot license or metered usage
- **No authentication**: Sites must be publicly accessible

---

## Microsoft Learn References

- **Add knowledge sources to your declarative agent in Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **Public website knowledge sources**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/knowledge-sources#public-websites

- **Web content policies**  
  https://learn.microsoft.com/en-us/copilot/microsoft-365/manage-public-web-access
