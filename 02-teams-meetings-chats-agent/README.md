# Teams Meetings & Chats Agent

**Demo Focus**: Demonstrates how to add Teams chats, meetings, and transcripts as knowledge sources

---

## Agent Builder Configuration

### 1. Name
```
Project Memory Assistant
```
*Character limit: 30. Actual length: 26*

### 2. Description
```
Helps project teams access institutional memory from past meetings, decisions, and discussions. Searches through Teams meeting transcripts, chat history, and channel conversations to answer questions about project history, decisions made, action items, and discussion context. Ideal for project managers, team leads, and team members who need to quickly recall what was discussed, decided, or committed to in previous meetings. Reduces time spent searching through meeting notes and chat threads.
```
*Character limit: 1,000. Actual length: 494*

### 3. Instructions
```
You are an agent that helps project teams access institutional memory from past meetings and discussions. You search through Teams meeting transcripts and chat history to answer questions about project decisions, action items, and discussions.

Your behavior:
- Always cite the specific meeting date, time, or chat timestamp
- Quote relevant portions of transcripts when answering
- Identify who said what (attribute statements to speakers)
- Summarize long discussions into key points
- List action items with owners and due dates
- Connect related discussions across multiple meetings
- Highlight decisions and their rationale
- Note any changes to previous decisions
- Be clear when information is not found in the knowledge sources

Your tone: Helpful, organized, precise, and factual.
```
*Character limit: 8,000. Actual length: 688*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required Teams Sources:
- **Teams chat**: `#project-alpha-team` (add via search bar - type channel name)
- **Teams chat**: `#project-alpha-engineering` (add via search bar)
- **My Teams chats and meetings**: Toggle ON to search all your Teams chats and meeting transcripts
- **Specific meeting**: "Project Alpha Weekly Standup" (add via search bar if recurring)

**Note**: Up to 5 specific Teams chats can be added, OR enable "My Teams chats and meetings" for all

#### Optional Sources:
- **SharePoint folders**: Meeting agendas, decision logs, project documentation
- **Embedded files**: Upload meeting notes, decision registers from your device

#### Toggles:
- ☐ **Search all websites**: Disabled
- ☐ **Only use specified sources**: Enabled (search only Teams and specified sources)

### 5. Capabilities

- ☐ **Create documents, charts, and code** (Code Interpreter) - Not needed
- ☐ **Create images** (Image Generator) - Not needed

### 6. Starter Prompts

1. "What decisions were made in last week's standup meeting?"
2. "List all action items assigned to me from the past month"
3. "What was discussed about the database migration?"
4. "When did we decide to change the launch date?"
5. "Find all mentions of the budget increase request"
6. "Summarize yesterday's sprint planning meeting"
7. "What concerns were raised about the API design?"
8. "Who volunteered to lead the testing workstream?"
9. "What were the key takeaways from the client feedback session?"
10. "Find the decision rationale for choosing Azure over AWS"

---

## Mock Data Files

This demo includes simulated Teams meeting transcripts and chat conversations:

### Files Included:
1. `meeting-transcript-standup-2024-11-18.txt` - Weekly standup meeting
2. `meeting-transcript-sprint-planning-2024-11-15.txt` - Sprint planning session
3. `meeting-transcript-architecture-review-2024-11-12.txt` - Technical design review
4. `teams-chat-project-alpha-team-nov-2024.txt` - Channel chat conversations
5. `teams-chat-engineering-discussion-nov-2024.txt` - Technical discussions

---

## Demo Script

### Setup (2 minutes)
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Click Teams icon (👥)
   - Search for and add specific Teams channels: `#project-alpha-team`
   - OR toggle **"My Teams chats and meetings"** to ON
   - Upload the mock transcript files from this folder (simulating Teams transcripts)
5. Toggle **"Only use specified sources"** to ON
6. Add the 10 Starter Prompts
7. Click **"Create"** to save the agent

### Demo Flow (7 minutes)

**Step 1: Find Past Decisions**
- **Ask**: "What decisions were made in last week's standup meeting?"
- **Expected**: Agent lists 3-4 decisions from Nov 18 standup: launch date change, tech stack selection, budget approval, citing meeting date and participants

**Step 2: Action Items Query**
- **Ask**: "List all action items assigned to Sarah from the past month"
- **Expected**: Agent extracts action items from multiple meetings, showing: task description, owner (Sarah), due date, status, citing source meetings

**Step 3: Topic Search Across Meetings**
- **Ask**: "What was discussed about the database migration?"
- **Expected**: Agent finds references across multiple meetings and chats, summarizing: timeline discussions, technical approach decisions, risks identified, citations from different dates

**Step 4: Decision Timeline**
- **Ask**: "When did we decide to change the launch date and why?"
- **Expected**: Agent identifies Nov 18 standup, quotes the discussion, explains rationale (vendor delay), notes who proposed it (Project Manager), and final decision

**Step 5: Meeting Summary**
- **Ask**: "Summarize yesterday's sprint planning meeting"
- **Expected**: Agent provides structured summary: attendees, sprint goal, stories committed, capacity allocation, blockers identified, next steps

**Step 6: Find Specific Person's Contributions**
- **Ask**: "What concerns did Mike raise about the API design?"
- **Expected**: Agent finds Mike's comments in architecture review meeting, quotes his concerns about rate limiting and authentication, includes context from discussion

### Key Demonstration Points:
✅ Agent searches Teams meeting transcripts and chat history  
✅ Citations include meeting dates, times, and participants  
✅ Accurate attribution (who said what)  
✅ Connects information across multiple meetings  
✅ Extracts action items with owners and dates  
✅ Provides relevant quotes from transcripts  

---

## Expected Behavior

### What Works:
- Questions about specific meetings or date ranges
- Searching for topics discussed across multiple meetings
- Finding action items and owners
- Identifying when decisions were made
- Summarizing meeting content
- Locating specific participants' contributions

### What Doesn't Work:
- Real-time meeting participation or scheduling
- Modifying or creating meeting invites
- Accessing meetings user doesn't have permission to see
- Transcribing new meetings (only searches existing transcripts)
- Joining or controlling active meetings

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ❌ | Optional for this demo |
| SharePoint folders | ❌ | Optional |
| Teams chats | ✅ | **Primary knowledge source** - specific channels |
| My Teams chats and meetings | ✅ | **Toggle ON** to search all meetings |
| Embedded files | ✅ | Upload transcript files |
| My emails | ❌ | Not needed for this use case |
| Public websites | ❌ | Disabled |
| Web search | ❌ | Disabled |
| Only use specified sources | ✅ | **Enabled** to limit to Teams data |
| People directory | ❌ | Not needed |
| Code Interpreter | ❌ | Not needed |
| Image Generator | ❌ | Not needed |

---

## Important Notes

### Teams Knowledge Sources Requirements:
- **License**: Requires Microsoft 365 Copilot add-on license to access Teams chats and meetings
- **Permissions**: Only searches meetings/chats user has access to (respects Teams permissions)
- **Transcription**: Meeting must have transcription enabled to be searchable
- **Limit**: Up to 5 specific Teams chats OR "My Teams chats and meetings" (all)

### Privacy Considerations:
- Agent only accesses meetings/chats the user has permission to see
- Cannot access other users' private chats
- Respects Teams channel membership and permissions
- Meeting transcripts must be enabled by meeting organizer

---

## Microsoft Learn References

- **Add knowledge sources to your declarative agent in Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **Teams meetings and chats knowledge sources**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/knowledge-sources#teams-messages

- **Meeting transcription in Microsoft Teams**  
  https://learn.microsoft.com/en-us/microsoftteams/meeting-transcription
