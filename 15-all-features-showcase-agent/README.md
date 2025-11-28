# All Features Showcase Agent

**Demo Focus**: Demonstrates ALL Agent Builder capabilities combined (comprehensive showcase)

---

## Agent Builder Configuration

### 1. Name
```
Ultimate Project Assistant
```
*Character limit: 30. Actual length: 27*

### 2. Description
```
Your comprehensive project management assistant combining all Agent Builder capabilities. Searches SharePoint docs, Teams meetings, emails, web, analyzes data with Python, creates charts and visualizations, generates images for presentations, and references the org directory. Ask "Analyze project budget and create visuals" or "Find meeting decisions and create summary report." Ideal for project managers, team leads, and anyone who needs a Swiss Army knife agent that can handle research, analysis, visualization, and content creation all in one place.
```
*Character limit: 1,000. Actual length: 543*

### 3. Instructions
```
You are a comprehensive project assistant that combines research, analysis, visualization, and content creation. You can search multiple knowledge sources, analyze data, create charts, and generate images.

Your behavior:
- Search SharePoint, Teams, emails, and web for information
- Find people and experts in the organization
- Analyze data files and create visualizations
- Generate charts, graphs, and statistical analysis
- Create images and visual content for presentations
- Synthesize information from multiple sources
- Provide citations and sources for all information
- Create comprehensive reports and summaries
- Recommend actions based on data insights
- Adapt to different project needs and contexts

Your tone: Comprehensive, versatile, professional, and solution-oriented.
```
*Character limit: 8,000. Actual length: 727*

### 4. Knowledge Sources

**Add ALL knowledge source types:**

#### M365 Sources:
- **SharePoint sites**: Project documentation, policies, templates
- **SharePoint folders**: Specific project folders
- **Teams chats**: Project channels (up to 5 or "My Teams chats and meetings")
- **My emails**: Personal mailbox for project communications
- **Embedded files**: Project plans, datasets, brand guidelines (up to 20 files)

#### Web Sources:
- **Public websites**: Industry documentation, vendor sites (up to 4 URLs)
- **Web search**: Toggle ON for real-time research

#### People:
- **Reference people in organization**: Toggle ON for expert finding

#### Toggles:
- ☑ **Search all websites**: Enabled for comprehensive research
- ☐ **Only use specified sources**: Disabled (allow broad search)
- ☑ **Reference people in organization**: Enabled

### 5. Capabilities

- ☑ **Create documents, charts, and code** (Code Interpreter) - **ENABLED**
- ☑ **Create images** (Image Generator) - **ENABLED**

**ALL CAPABILITIES ENABLED** ✅

### 6. Starter Prompts

1. "Analyze Q4 budget data, create charts, and find team members responsible"
2. "Search meeting notes for key decisions and create executive summary"
3. "Find project status updates across SharePoint, Teams, and emails"
4. "Generate project timeline visualization and create presentation image"
5. "Analyze survey results, create charts, and recommend actions"
6. "Research industry trends and create infographic visual"
7. "Find Python experts in Seattle office and analyze their project contributions"
8. "Create financial report with charts, graphs, and professional header image"
9. "Search web for best practices and create implementation guide with visuals"
10. "Compile project retrospective from all sources and create summary presentation"

---

## Mock Data Files

This demo includes comprehensive mock data covering all scenarios:

### Files Included:
1. **Data files**: sales-data-2024.xlsx, project-budget.csv, survey-results.csv
2. **Documents**: project-plan.docx, meeting-notes.txt, team-roster.csv
3. **Policies**: remote-work-policy.txt, expense-policy.txt
4. **References**: brand-guidelines.pdf, style-guide.txt

---

## Demo Script

### Setup (3 minutes)
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Add SharePoint sites and folders
   - Add Teams chats or toggle "My Teams chats and meetings" ON
   - Toggle "My emails" ON
   - Upload all mock files from this folder
   - Add public website URLs
   - Toggle "Search all websites" ON
   - Toggle "Reference people in organization" ON
5. In **Capabilities** section:
   - Toggle **"Create documents, charts, and code"** (Code Interpreter) to **ON**
   - Toggle **"Create images"** (Image Generator) to **ON**
6. Add the 10 Starter Prompts
7. Click **"Create"** to save the agent

### Demo Flow (15 minutes)

**Step 1: Multi-Source Research**
- **Ask**: "Find project status updates across SharePoint, Teams, and emails from the past week"
- **Expected**: Agent searches all sources, compiles updates from docs, meeting transcripts, email threads, provides comprehensive status with citations

**Step 2: Data Analysis + Visualization**
- **Ask**: "Analyze Q4 budget data and create bar charts showing spending by department"
- **Expected**: Code Interpreter analyzes Excel file, creates professional charts with labels, provides spending insights and trends

**Step 3: People Finding + Context**
- **Ask**: "Find Python developers in the Seattle office who have worked on data analytics projects"
- **Expected**: People directory search for skills + location, cross-references with project documents, provides names and relevant experience

**Step 4: Web Research + Synthesis**
- **Ask**: "Research current best practices for Agile project management and summarize key findings"
- **Expected**: Web search finds recent articles, synthesizes best practices from multiple sources, provides actionable recommendations

**Step 5: Comprehensive Report Creation**
- **Ask**: "Create a complete project status report including: budget analysis with charts, team member contributions, recent decisions from meetings, and risks identified in emails. Then generate a professional header image for the presentation."
- **Expected**: Multi-step response:
  1. Searches meeting transcripts for decisions (Teams)
  2. Analyzes budget data and creates charts (Code Interpreter)
  3. Identifies risks from emails (Email search)
  4. Compiles team contributions (SharePoint + People)
  5. Generates professional header image (Image Generator)
  6. Provides comprehensive formatted report

**Step 6: Iterative Refinement**
- **Ask**: "Now create an infographic-style visual summarizing the top 5 project risks with icons"
- **Expected**: Image Generator creates visual infographic with risk summary

**Step 7: Code + Visualization**
- **Ask**: "Show me the Python code you used for the budget analysis, and create a pie chart of the data"
- **Expected**: Displays Python code used, generates pie chart visualization

### Key Demonstration Points:
✅ **All knowledge sources** used (SharePoint, Teams, Email, Web, People)  
✅ **All capabilities** used (Code Interpreter, Image Generator)  
✅ **Multi-source synthesis** combines information across sources  
✅ **Data analysis** with statistical insights  
✅ **Visual creation** for presentations  
✅ **Org directory** for people finding  
✅ **Web research** for current information  
✅ **Complete workflow** from research to deliverable  

---

## Expected Behavior

### What Works (EVERYTHING):
- Multi-source knowledge search
- Data analysis and visualization
- Image and graphic creation
- People and expert finding
- Real-time web research
- Email communication analysis
- Meeting transcript search
- Document synthesis
- Code generation
- Statistical analysis
- Chart and graph creation
- Infographic generation
- Comprehensive reporting

### Integration Benefits:
- Single agent for entire project lifecycle
- No switching between tools
- Contextual understanding across sources
- Comprehensive answers combining multiple capabilities

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| **SharePoint sites** | ✅ | Project docs and policies |
| **SharePoint folders** | ✅ | Specific document libraries |
| **Teams chats** | ✅ | Meeting transcripts and discussions |
| **My emails** | ✅ | Project communications |
| **Embedded files** | ✅ | All file types (20 files max) |
| **Public websites** | ✅ | Industry docs (4 URLs) |
| **Search all websites** | ✅ | Real-time web research |
| **Only use specified sources** | ❌ | Disabled for broad reach |
| **Reference people in organization** | ✅ | Team member finding |
| **Code Interpreter** | ✅ | Data analysis and viz |
| **Image Generator** | ✅ | Visual content creation |

**ALL FEATURES ENABLED** ✅✅✅

---

## Important Notes

### Comprehensive Agent Benefits:
- **Single point of access**: One agent for all project needs
- **Contextual intelligence**: Understands relationships between sources
- **Time savings**: No need to switch between multiple agents or tools
- **Comprehensive insights**: Combines data, documents, people, and research

### Complexity Considerations:
- **Response time**: May take longer for multi-capability requests
- **Token usage**: Comprehensive requests consume more tokens
- **Scope clarity**: Be specific about which capabilities you want used
- **Iterative approach**: Break complex requests into steps if needed

### Best Practices:
1. **Specific requests**: "Analyze data AND create chart" vs. vague "help me"
2. **Source hints**: Mention where to look ("check SharePoint and Teams")
3. **Capability hints**: Specify "create visualization" or "generate image"
4. **Iterative refinement**: Start broad, then refine with follow-ups
5. **Verify outputs**: Check citations and sources for accuracy

### License Requirements:
- **SharePoint/Web**: Requires license or metered usage
- **Teams/Email/People**: Requires Microsoft 365 Copilot add-on license
- **Code Interpreter**: Included with Copilot license
- **Image Generator**: Included with Copilot license

### Performance Tips:
- Upload key files rather than relying solely on SharePoint search
- Use specific Teams channels rather than "all chats" for faster results
- Provide date ranges to narrow email searches
- Be specific about desired chart types and image styles

---

## Microsoft Learn References

- **Build agents with Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite

- **Add knowledge sources**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **Code interpreter capability**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/code-interpreter

- **Image generator capability**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/image-generator

- **Agent capabilities overview**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/agents-overview
