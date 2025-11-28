# Email Intelligence Agent

**Demo Focus**: Demonstrates how to add "My emails" as a knowledge source (personal mailbox toggle)

---

## Agent Builder Configuration

### 1. Name
```
Email Research Assistant
```
*Character limit: 30. Actual length: 26*

### 2. Description
```
Helps you find information, decisions, and conversations from your email history. Searches your personal Outlook mailbox to answer questions about past communications, locate specific emails, summarize email threads, and extract key information from correspondence. Ideal for quickly recalling what was discussed in emails, finding commitments made, or researching project history without manually searching through folders. Respects your email permissions and only searches your own mailbox.
```
*Character limit: 1,000. Actual length: 471*

### 3. Instructions
```
You are an agent that helps users find information from their email history. You search through Outlook emails to answer questions about past communications, decisions, and commitments.

Your behavior:
- Always cite the email date, sender, and subject line
- Quote relevant portions of emails when answering
- Summarize long email threads into key points
- Identify action items and commitments from emails
- Track conversation threads across multiple emails
- Note who was CC'd on important communications
- Highlight attachments or referenced documents
- Be clear about email dates and context
- Respect confidentiality - only search user's own mailbox

Your tone: Helpful, precise, professional, and discreet.
```
*Character limit: 8,000. Actual length: 629*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required Email Source:
- **My emails**: Toggle ON in search bar (searches your personal Outlook mailbox)

**Important**: 
- Only searches YOUR personal mailbox
- Does NOT search shared mailboxes or other users' emails
- Requires Microsoft 365 Copilot license
- Agent creator's emails only (not shareable)

#### Optional Sources:
- **SharePoint folders**: Project documentation for context
- **Teams chat**: Related Teams discussions
- **Embedded files**: Upload reference documents

#### Toggles:
- ☐ **Search all websites**: Disabled
- ☑ **Only use specified sources**: Enabled (email and specified sources only)

### 5. Capabilities

- ☐ **Create documents, charts, and code** (Code Interpreter) - Not needed
- ☐ **Create images** (Image Generator) - Not needed

### 6. Starter Prompts

1. "Find emails about the Q4 budget approval"
2. "What did the client say about the timeline in last week's emails?"
3. "Summarize the email thread with vendor ABC Corp"
4. "When did I last communicate with John Smith?"
5. "Find all emails with action items assigned to me"
6. "What attachments did Sarah send me this month?"
7. "Locate the email where we discussed pricing changes"
8. "Show me recent emails from the legal team"
9. "Find emails mentioning the product launch date"
10. "What commitments did I make in October emails?"

---

## Mock Data Files

This demo includes sample email content (simulated as text files):

### Files Included:
1. `email-thread-budget-approval.txt` - Q4 budget discussion
2. `email-thread-client-timeline.txt` - Client communications
3. `email-thread-vendor-contract.txt` - Vendor negotiations
4. `email-standalone-action-items.txt` - Project action items
5. `email-thread-pricing-discussion.txt` - Pricing strategy emails

---

## Demo Script

### Setup (2 minutes)
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Click Email icon (📧)
   - Toggle **"My emails"** to ON in the search bar
   - Alternatively: Upload the mock email files from this folder
5. Toggle **"Only use specified sources"** to ON
6. Add the 10 Starter Prompts
7. Click **"Create"** to save the agent

### Demo Flow (7 minutes)

**Step 1: Find Specific Topic**
- **Ask**: "Find emails about the Q4 budget approval"
- **Expected**: Agent lists relevant emails with dates, senders, subject lines, and brief summaries of budget discussions

**Step 2: Client Communication Search**
- **Ask**: "What did the client say about the timeline in last week's emails?"
- **Expected**: Agent quotes client's specific comments about timeline from Nov 11-18 emails, citing sender and date

**Step 3: Thread Summarization**
- **Ask**: "Summarize the email thread with vendor ABC Corp"
- **Expected**: Agent provides chronological summary of multi-email thread: initial request, negotiations, final agreement, with dates and key participants

**Step 4: Action Items Extraction**
- **Ask**: "Find all emails with action items assigned to me"
- **Expected**: Agent lists action items from various emails showing: task, assigner, due date, email date/subject

**Step 5: Attachment Search**
- **Ask**: "What attachments did Sarah send me this month?"
- **Expected**: Agent lists emails from Sarah in November with attachments: filename, email date, subject line

**Step 6: Commitment Tracking**
- **Ask**: "What commitments did I make in October emails?"
- **Expected**: Agent extracts commitments/promises made in sent emails: what was committed, to whom, when, context

### Key Demonstration Points:
✅ Agent searches personal Outlook mailbox  
✅ Citations include email date, sender, subject  
✅ Accurate summarization of email threads  
✅ Extracts action items and commitments  
✅ Searches across sent and received emails  
✅ Respects email permissions (own mailbox only)  

---

## Expected Behavior

### What Works:
- Searching your own sent and received emails
- Finding specific topics, people, or date ranges
- Summarizing long email threads
- Extracting action items and commitments
- Locating attachments and referenced documents
- Tracking conversations over time

### What Doesn't Work:
- Searching other users' mailboxes
- Accessing shared mailboxes
- Sending or replying to emails
- Creating or modifying emails
- Scheduling meetings
- Accessing emails outside your permissions

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ❌ | Optional |
| Teams chats | ❌ | Optional |
| My emails | ✅ | **Primary feature** - toggle in search bar |
| Embedded files | ✅ | Upload sample emails for demo |
| Public websites | ❌ | Disabled |
| Web search | ❌ | Disabled |
| Only use specified sources | ✅ | **Enabled** to limit to emails |
| People directory | ❌ | Not needed |
| Code Interpreter | ❌ | Not needed |
| Image Generator | ❌ | Not needed |

---

## Important Notes

### Email Knowledge Source Limitations:
- **Personal mailbox only**: Cannot search shared mailboxes, distribution lists, or other users' emails
- **License required**: Requires Microsoft 365 Copilot add-on license
- **Not shareable**: Agent creator's emails only - users you share agent with cannot access your emails
- **Privacy**: Your emails remain private even when agent is shared
- **Permissions**: Only searches emails you have access to

### Use Cases:
✅ Personal email research and recall  
✅ Finding commitments and action items  
✅ Summarizing long email threads  
✅ Tracking project communications  
❌ Team-wide email search (use SharePoint or Teams instead)  
❌ Shared mailbox access  

---

## Microsoft Learn References

- **Add knowledge sources to your declarative agent in Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **Email knowledge sources**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/knowledge-sources#email

- **Microsoft 365 Copilot data privacy**  
  https://learn.microsoft.com/en-us/copilot/microsoft-365/microsoft-365-copilot-privacy
