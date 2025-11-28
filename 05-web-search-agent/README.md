# Web Search Agent

**Demo Focus**: Demonstrates "Search all websites" toggle for real-time web search

---

## Agent Builder Configuration

### 1. Name
```
Current Events Researcher
```
*Character limit: 30. Actual length: 25*

### 2. Description
```
Helps you research current events, breaking news, and up-to-date information from across the web. Searches the internet in real-time to answer questions about recent developments, latest trends, news stories, and current topics. Ideal for staying informed about industry news, competitive intelligence, market trends, and real-time information that isn't available in static knowledge bases. Provides citations with source URLs and publication dates.
```
*Character limit: 1,000. Actual length: 449*

### 3. Instructions
```
You are an agent that researches current events and up-to-date information from across the web. You perform real-time web searches to answer questions about recent news, trends, and developments.

Your behavior:
- Always search for the most recent and current information
- Cite sources with URLs and publication dates
- Compare information across multiple sources
- Note conflicting information between sources
- Prioritize authoritative and reliable sources
- Indicate when information is breaking or rapidly changing
- Provide context for news events
- Summarize key points from multiple articles
- Include different perspectives on controversial topics
- Be transparent about source reliability

Your tone: Informative, objective, current, and analytical.
```
*Character limit: 8,000. Actual length: 691*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required Web Search:
- ☑ **Search all websites**: Toggle **ON** (enables real-time web search)

**Important**: 
- Searches the entire internet, not just specific sites
- Provides real-time, current information
- Results may vary based on search relevance
- No authentication required

#### Optional Sources:
- **Public websites**: Add specific trusted news sources (optional)
- **Embedded files**: Upload background research or reference materials

#### Toggles:
- ☑ **Search all websites**: **ENABLED** (primary feature)
- ☐ **Only use specified sources**: Disabled (allow web search)

### 5. Capabilities

- ☐ **Create documents, charts, and code** (Code Interpreter) - Not needed
- ☐ **Create images** (Image Generator) - Not needed

### 6. Starter Prompts

1. "What are the latest Microsoft product announcements?"
2. "Find recent news about AI developments this week"
3. "What are current trends in cloud computing?"
4. "Summarize today's technology headlines"
5. "What did analysts say about the recent earnings report?"
6. "Find the latest security vulnerabilities announced"
7. "What are competitors announcing at the conference?"
8. "Search for recent customer reviews of our products"
9. "What's the current status of the proposed regulation?"
10. "Find expert opinions on the latest industry merger"

---

## Demo Script

### Setup (1 minute)
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Toggle **"Search all websites"** to **ON**
   - Do NOT enable "Only use specified sources"
5. Add the 10 Starter Prompts
6. Click **"Create"** to save the agent

### Demo Flow (7 minutes)

**Step 1: Recent News Search**
- **Ask**: "What are the latest Microsoft product announcements?"
- **Expected**: Agent searches web and returns recent announcements from past week/month, cites news sources, includes dates and links

**Step 2: Trending Topics**
- **Ask**: "Find recent news about AI developments this week"
- **Expected**: Agent finds current AI news from multiple sources, summarizes key developments, provides timeline of recent events

**Step 3: Industry Trends**
- **Ask**: "What are current trends in cloud computing?"
- **Expected**: Agent searches analyst reports, tech blogs, recent articles, synthesizes trends with citations from multiple authoritative sources

**Step 4: Breaking News**
- **Ask**: "Summarize today's technology headlines"
- **Expected**: Agent finds today's top tech news stories from major outlets, brief summaries with links, organized by topic

**Step 5: Competitive Intelligence**
- **Ask**: "What are competitors announcing at the conference?"
- **Expected**: Agent searches for conference announcements, press releases, live blogs, summarizes competitor activities with sources

**Step 6: Real-Time Status**
- **Ask**: "What's the current status of the proposed regulation?"
- **Expected**: Agent finds latest news on regulatory topic, timeline of developments, current status, expert commentary

### Key Demonstration Points:
✅ **Real-time web search** across entire internet  
✅ Current, up-to-date information  
✅ Multiple source citations with URLs  
✅ Publication dates included  
✅ Synthesis across sources  
✅ Different from static knowledge bases  

---

## Expected Behavior

### What Works:
- Real-time web search for current information
- Recent news and announcements
- Trending topics and developments
- Product reviews and comparisons
- Industry analysis and trends
- Breaking news and updates

### What Doesn't Work:
- Historical data behind paywalls
- Sites requiring authentication
- Real-time stock prices or financial data (unreliable)
- Constantly updating information (may be seconds old)
- Guaranteed accuracy (web sources vary)

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ❌ | Not needed |
| Teams chats | ❌ | Not needed |
| My emails | ❌ | Not needed |
| Public websites | ❌ | Optional (can add specific sites) |
| Embedded files | ❌ | Optional |
| **Search all websites** | ✅ | **PRIMARY FEATURE** - toggle ON |
| Only use specified sources | ❌ | **Disabled** to allow web search |
| People directory | ❌ | Not needed |
| Code Interpreter | ❌ | Not needed |
| Image Generator | ❌ | Not needed |

---

## Important Notes

### Web Search Capability:
- **Real-time**: Searches current web content
- **No limits on sites**: Searches entire internet
- **License**: May require Microsoft 365 Copilot license or metered usage
- **Admin control**: Can be disabled by tenant admin via policy
- **Privacy**: Searches are anonymous

### Comparison with Public Websites:
| Feature | Search all websites | Public websites (specific URLs) |
|---------|-------------------|--------------------------------|
| Sources | Entire internet | Up to 4 specific URLs |
| Real-time | Yes | Cached content |
| Control | Less control | Full control of sources |
| Best for | Current events | Trusted documentation |

### Use Cases:
✅ Breaking news and current events  
✅ Competitive intelligence  
✅ Market research and trends  
✅ Product reviews and sentiment  
✅ Real-time status updates  
❌ Highly sensitive or confidential research  
❌ When source control is critical  
❌ Historical archived content  

---

## Microsoft Learn References

- **Add knowledge sources to your declarative agent in Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **Web search in Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/knowledge-sources#web-search

- **Manage public web access for Copilot**  
  https://learn.microsoft.com/en-us/copilot/microsoft-365/manage-public-web-access
