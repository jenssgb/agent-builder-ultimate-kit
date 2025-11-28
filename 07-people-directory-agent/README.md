# People Directory Agent

**Demo Focus**: Demonstrates "Reference people in organization" toggle for org directory access

---

## Agent Builder Configuration

### 1. Name
```
Employee Directory Assistant
```
*Character limit: 30. Actual length: 29*

### 2. Description
```
Helps you find colleagues, experts, and organizational information from the company directory. Searches employee profiles, org charts, skills, and contact details to answer questions like "Who is the marketing manager?" or "Find experts in Python programming." Ideal for onboarding, team formation, cross-functional collaboration, and locating subject matter experts. Accesses public profile information including names, titles, departments, locations, managers, and skills. Respects privacy settings and only shows information employees have made visible.
```
*Character limit: 1,000. Actual length: 525*

### 3. Instructions
```
You are an agent that helps users find colleagues and organizational information from the employee directory. You search through org charts, employee profiles, and skills to connect people.

Your behavior:
- Search employee profiles for names, titles, departments, skills
- Identify reporting structures and org hierarchy
- Find subject matter experts by skill or expertise
- Locate people by location, office, or team
- Respect privacy - only show public profile information
- Provide contact details (email, phone, Teams) when available
- Suggest relevant people for specific needs or projects
- Explain organizational structure and relationships
- Note when multiple people match criteria
- Be clear when information is not found or not public

Your tone: Helpful, professional, respectful of privacy, and connected.
```
*Character limit: 8,000. Actual length: 719*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required People Directory:
- ☑ **Reference people in organization**: Toggle **ON** (enables org directory search)

**Important**: 
- Searches Azure AD / Entra ID employee directory
- Only shows information employees have made public
- Respects privacy settings
- Includes: names, titles, departments, managers, skills, locations

#### Optional Sources:
- **SharePoint folders**: Org charts, team directories
- **Embedded files**: Skills matrices, project team lists

#### Toggles:
- ☐ **Search all websites**: Disabled
- ☐ **Only use specified sources**: Disabled (or enabled with people data)

### 5. Capabilities

- ☐ **Create documents, charts, and code** (Code Interpreter) - Optional (for org chart visualization)
- ☐ **Create images** (Image Generator) - Not needed

### 6. Starter Prompts

1. "Who is the Chief Marketing Officer?"
2. "Find employees with Azure certification"
3. "Who reports to the VP of Engineering?"
4. "Locate Python experts in the Seattle office"
5. "Who are the product managers for cloud services?"
6. "Find team members in the EMEA region"
7. "Who is Sarah Chen's manager?"
8. "Identify data scientists on the AI team"
9. "Find colleagues who speak Spanish"
10. "Who are the compliance officers?"

---

## Mock Data Files

This demo includes sample employee directory data:

### Files Included:
1. `employee-directory-sample.csv` - Employee profiles with skills
2. `org-chart-engineering.txt` - Engineering department structure
3. `skills-matrix.csv` - Employee skills and certifications
4. `office-locations.txt` - Global office directory

---

## Demo Script

### Setup (2 minutes)
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Toggle **"Reference people in organization"** to **ON**
   - Alternatively: Upload the mock employee directory files from this folder
5. Add the 10 Starter Prompts
6. Click **"Create"** to save the agent

### Demo Flow (7 minutes)

**Step 1: Executive Search**
- **Ask**: "Who is the Chief Marketing Officer?"
- **Expected**: Agent identifies CMO by name, provides title, department, contact info (email, Teams), reports to CEO

**Step 2: Skills-Based Search**
- **Ask**: "Find employees with Azure certification"
- **Expected**: Agent lists employees with Azure certs in their profiles, shows names, titles, departments, certification details

**Step 3: Org Hierarchy Query**
- **Ask**: "Who reports to the VP of Engineering?"
- **Expected**: Agent lists direct reports: names, titles, teams, visualizes reporting structure if Code Interpreter enabled

**Step 4: Location and Expertise**
- **Ask**: "Locate Python experts in the Seattle office"
- **Expected**: Agent combines location (Seattle) + skill (Python) filters, returns matching employees with contact info

**Step 5: Role-Based Search**
- **Ask**: "Who are the product managers for cloud services?"
- **Expected**: Agent searches by title + team/department, lists relevant PMs with their product areas

**Step 6: Reporting Structure**
- **Ask**: "Who is Sarah Chen's manager?"
- **Expected**: Agent identifies Sarah's direct manager, shows manager's name, title, contact info, can trace up management chain

### Key Demonstration Points:
✅ **Org directory search** enabled  
✅ Finds people by name, title, department  
✅ Skills and expertise search  
✅ Reporting structure and hierarchy  
✅ Location-based searches  
✅ Contact information provided  
✅ Privacy-respectful (public info only)  

---

## Expected Behavior

### What Works:
- Finding employees by name, title, department
- Searching for skills and certifications
- Identifying reporting structures
- Locating people by office/location
- Finding subject matter experts
- Getting contact information (email, phone, Teams)

### What Doesn't Work:
- Accessing private profile information
- Seeing salary or compensation data
- Viewing performance reviews
- Modifying employee profiles
- Adding or removing people from directory

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ❌ | Optional |
| Teams chats | ❌ | Optional |
| My emails | ❌ | Not needed |
| Public websites | ❌ | Not needed |
| Embedded files | ✅ | Optional (skills matrices) |
| Web search | ❌ | Disabled |
| Only use specified sources | ❌ | Optional |
| **Reference people in organization** | ✅ | **PRIMARY FEATURE** - toggle ON |
| Code Interpreter | ✅ | Optional (org chart viz) |
| Image Generator | ❌ | Not needed |

---

## Important Notes

### People Directory Requirements:
- **Source**: Azure AD / Microsoft Entra ID employee directory
- **License**: Requires Microsoft 365 Copilot license (license only)
- **Privacy**: Only shows public profile information
- **Permissions**: Respects directory visibility settings
- **Profile fields**: Name, title, department, manager, office location, phone, email, skills (if populated)

### Privacy Considerations:
- ✅ Public profile information searchable
- ✅ Respects employee privacy settings
- ❌ Cannot access private profile fields
- ❌ Cannot see sensitive HR data
- ❌ Cannot override directory permissions

### Use Cases:
✅ Finding colleagues and experts  
✅ Onboarding new employees  
✅ Building project teams  
✅ Cross-functional collaboration  
✅ Locating subject matter experts  
✅ Understanding org structure  
❌ HR operations  
❌ Salary/compensation queries  
❌ Performance management  

### Profile Completeness:
- Agent effectiveness depends on employees maintaining complete profiles
- Encourage employees to add skills, certifications, expertise
- Keep org chart and reporting relationships current
- Regularly update office locations

---

## Microsoft Learn References

- **Add knowledge sources to your declarative agent in Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **People data knowledge sources**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/knowledge-sources#people

- **Microsoft Entra ID (Azure AD) profiles**  
  https://learn.microsoft.com/en-us/entra/fundamentals/how-to-manage-user-profile-info
