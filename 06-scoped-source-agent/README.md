# Scoped Source Agent

**Demo Focus**: Demonstrates "Only use specified sources" toggle for strict source control

---

## Agent Builder Configuration

### 1. Name
```
Compliance Policy Advisor
```
*Character limit: 30. Actual length: 26*

### 2. Description
```
Provides answers strictly from approved company compliance and policy documents. Searches only designated SharePoint sites and embedded compliance files, with web search explicitly disabled. Ensures all guidance comes from official, authorized sources without external information. Ideal for compliance officers, legal teams, and employees who need verified answers to regulatory, legal, and policy questions. Guarantees source accuracy by limiting to approved knowledge sources only.
```
*Character limit: 1,000. Actual length: 477*

### 3. Instructions
```
You are an agent that provides compliance and policy guidance strictly from approved sources. You search only designated internal documents and explicitly avoid external sources.

Your behavior:
- ONLY use information from specified sources (SharePoint, embedded files)
- NEVER use web search or external information
- Always cite the specific policy document and section
- Include document version numbers and effective dates
- Be explicit when information is NOT found in approved sources
- Do not speculate or provide general knowledge
- Recommend contacting legal/compliance team for topics not covered
- Emphasize source accuracy and official guidance
- Note if policies may be outdated (check revision dates)
- Provide document links for users to verify information

Your tone: Authoritative, precise, cautious, and policy-focused.
```
*Character limit: 8,000. Actual length: 736*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required Internal Sources:
- **SharePoint site**: `https://contoso.sharepoint.com/sites/Compliance`
- **SharePoint folder**: `/sites/Legal/Shared Documents/Policies`
- **Embedded files**: Upload compliance manuals, regulations, SOPs

**Critical**: NO external sources

#### Toggles:
- ☐ **Search all websites**: **DISABLED** (no web search)
- ☑ **Only use specified sources**: **ENABLED** (strict source control)

### 5. Capabilities

- ☐ **Create documents, charts, and code** (Code Interpreter) - Not needed
- ☐ **Create images** (Image Generator) - Not needed

### 6. Starter Prompts

1. "What is our GDPR data retention policy?"
2. "Explain the insider trading policy"
3. "What are the export control regulations we must follow?"
4. "How do we handle PII in customer contracts?"
5. "What's the approval process for third-party vendors?"
6. "Explain our anti-corruption compliance requirements"
7. "What are the document retention requirements?"
8. "How do we classify confidential information?"
9. "What training is required for compliance certification?"
10. "What's the procedure for reporting policy violations?"

---

## Mock Data Files

This demo includes compliance and policy documents:

### Files Included:
1. `gdpr-compliance-policy.txt` - Data privacy regulations
2. `insider-trading-policy.txt` - Securities trading rules
3. `export-control-compliance.txt` - Trade regulations
4. `vendor-approval-procedure.txt` - Third-party vetting
5. `information-classification-policy.txt` - Data handling

---

## Demo Script

### Setup (2 minutes)
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Add SharePoint sites for compliance docs
   - Upload the mock policy files from this folder
   - **Toggle "Search all websites" to OFF**
   - **Toggle "Only use specified sources" to ON** ⚠️ CRITICAL
5. Add the 10 Starter Prompts
6. Click **"Create"** to save the agent

### Demo Flow (7 minutes)

**Step 1: Internal Policy Query**
- **Ask**: "What is our GDPR data retention policy?"
- **Expected**: Agent provides answer ONLY from internal GDPR policy document, cites document name, section, effective date

**Step 2: Verify Source Restriction**
- **Ask**: "What are GDPR best practices?" (general question)
- **Expected**: Agent responds that it can only provide information from internal policy docs, does NOT search web, suggests contacting compliance team for general best practices

**Step 3: Specific Compliance Question**
- **Ask**: "Explain the insider trading policy"
- **Expected**: Agent quotes from internal insider trading policy, includes: prohibited activities, blackout periods, reporting requirements, citing policy document

**Step 4: Missing Information Handling**
- **Ask**: "What is the policy on cryptocurrency investments?" (topic not in knowledge base)
- **Expected**: Agent explicitly states this topic is NOT covered in available policy documents, recommends contacting legal/compliance team

**Step 5: Cross-Reference Policies**
- **Ask**: "How do we handle PII in customer contracts?"
- **Expected**: Agent combines information from GDPR policy + information classification policy, cites both sources

**Step 6: Procedure Request**
- **Ask**: "What's the approval process for third-party vendors?"
- **Expected**: Agent provides step-by-step procedure from vendor approval SOP, includes: approval levels, documentation required, timeline

### Key Demonstration Points:
✅ **Strict source control** - only uses specified sources  
✅ **No web search** - explicitly disabled  
✅ **Clear when info not available** - doesn't speculate  
✅ **Official sources only** - cites internal docs  
✅ **Compliance-safe** - no external contamination  
✅ **Audit trail** - clear citations  

---

## Expected Behavior

### What Works:
- Questions answered from internal sources only
- Policy and compliance guidance
- Procedure explanations
- Document citations and references
- Clear "not found" responses for missing info

### What Doesn't Work (by design):
- General knowledge questions
- Web search for additional context
- Information not in specified sources
- Real-time regulatory updates from external sites

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ✅ | Primary source |
| SharePoint folders | ✅ | Compliance document libraries |
| Embedded files | ✅ | Policy documents |
| Teams chats | ❌ | Not needed |
| My emails | ❌ | Not needed |
| Public websites | ❌ | **Explicitly excluded** |
| **Search all websites** | ❌ | **DISABLED** - no web search |
| **Only use specified sources** | ✅ | **ENABLED** - strict control |
| People directory | ❌ | Not needed |
| Code Interpreter | ❌ | Not needed |
| Image Generator | ❌ | Not needed |

---

## Important Notes

### Why Use "Only use specified sources"?

**Use Cases**:
- ✅ Compliance and legal guidance
- ✅ Internal policy enforcement
- ✅ Regulated industries (healthcare, finance)
- ✅ Confidential information handling
- ✅ Audit and certification requirements
- ✅ When source accuracy is critical

**Benefits**:
- Guarantees answers from approved sources only
- No contamination from external/unreliable sources
- Full audit trail of information sources
- Compliance with regulatory requirements
- Reduces liability from incorrect guidance

**Trade-offs**:
- Limited to specified knowledge base
- Cannot provide general knowledge
- May say "I don't know" more often
- Requires comprehensive knowledge sources

### Comparison with Web Search Enabled:

| Aspect | Only specified sources | Web search enabled |
|--------|----------------------|-------------------|
| Source control | Full control | No control |
| Compliance | High confidence | Risk of external info |
| Coverage | Limited to sources | Broad coverage |
| Best for | Regulated content | General research |

---

## Microsoft Learn References

- **Add knowledge sources to your declarative agent in Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **Scoped knowledge sources**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/knowledge-sources#scoped-web-search

- **Compliance and governance for agents**  
  https://learn.microsoft.com/en-us/copilot/microsoft-365/copilot-control-system/security-governance
