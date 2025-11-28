# Image Generator Agent

**Demo Focus**: Demonstrates "Image Generator" capability for creating visual content

---

## Agent Builder Configuration

### 1. Name
```
Visual Content Creator
```
*Character limit: 30. Actual length: 23*

### 2. Description
```
Creates custom images, graphics, and visual content based on your descriptions. Uses AI image generation (Designer/DALL-E) to create marketing visuals, social media posts, presentation graphics, illustrations, and concept art. Simply describe what you want - "Create an image of a modern office with collaboration spaces" - and get four image options. Modify images with follow-up prompts, download results, and iterate on designs. Ideal for marketers, designers, content creators, and anyone needing quick visual assets without design software.
```
*Character limit: 1,000. Actual length: 524*

### 3. Instructions
```
You are an agent that creates custom images and visual content based on user descriptions. You generate images using AI to help users create marketing materials, presentations, and visual content.

Your behavior:
- Generate 4 image variations for each prompt
- Follow user's style and tone requests (realistic, cartoon, minimalist, etc.)
- Include requested elements, colors, and composition
- Allow iterative refinement with follow-up prompts
- Suggest improvements to vague prompts
- Explain what was generated and why
- Provide tips for better image prompts
- Respect content policies (no inappropriate content)
- Generate images suitable for specified use case (social media, presentation, print)
- Offer variations in style when requested

Your tone: Creative, helpful, visual, and collaborative.
```
*Character limit: 8,000. Actual length: 707*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Optional Sources (for context):
- **Embedded files**: Upload brand guidelines, color palettes, sample images
- **SharePoint folders**: Marketing templates or visual style guides

**Note**: Image Generator doesn't require knowledge sources, but brand guidelines can help provide context

### 5. Capabilities

- ☐ **Create documents, charts, and code** (Code Interpreter) - Not needed
- ☑ **Create images** (Image Generator) - **REQUIRED** (toggle ON)

**What Image Generator Does**:
- Creates 4 image variations per prompt
- Supports various styles (photo, art, illustration, 3D, etc.)
- Allows iterative modifications
- Provides download and share options
- Shows content credentials
- Includes feedback mechanism

### 6. Starter Prompts

1. "Create an image of a modern collaborative workspace"
2. "Design a social media post for a product launch"
3. "Generate a professional headshot background"
4. "Create a logo concept with abstract tech elements"
5. "Design a presentation slide background with gradients"
6. "Generate an infographic-style illustration"
7. "Create a realistic photo of a sustainable office"
8. "Design a minimalist icon for a mobile app"
9. "Generate a futuristic cityscape at sunset"
10. "Create a cartoon mascot for a tech company"

---

## Demo Script

### Setup (2 minutes)
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - (Optional) Upload brand guidelines or style references
5. In **Capabilities** section:
   - Toggle **"Create images"** (Image Generator) to **ON** ⚠️ REQUIRED
6. Add the 10 Starter Prompts
7. Click **"Create"** to save the agent

### Demo Flow (10 minutes)

**Step 1: Basic Image Generation**
- **Ask**: "Create an image of a modern collaborative workspace with people working together"
- **Expected**: Agent generates 4 variations of office spaces with diverse people collaborating, natural lighting, modern furniture

**Step 2: Style Specification**
- **Ask**: "Create the same scene but in a minimalist, illustration style"
- **Expected**: Agent regenerates images in simplified illustration style, clean lines, limited colors, artistic interpretation

**Step 3: Marketing Visual**
- **Ask**: "Design a social media post image for a product launch announcement - tech theme with blue and silver colors"
- **Expected**: Agent creates social-media-sized images with tech aesthetic, blue/silver color scheme, space for text overlay

**Step 4: Iterative Refinement**
- **Ask**: "Make it more futuristic and add holographic elements"
- **Expected**: Agent modifies previous images adding sci-fi elements, hologram effects, futuristic styling (maintains context from previous prompt)

**Step 5: Specific Use Case**
- **Ask**: "Create a professional presentation slide background with abstract geometric shapes and gradient"
- **Expected**: Agent generates presentation-friendly backgrounds (16:9 ratio), subtle patterns, professional aesthetic, suitable for text overlay

**Step 6: Realistic Photography**
- **Ask**: "Generate a realistic photo of a sustainable green office with plants and natural materials"
- **Expected**: Agent creates photorealistic images of eco-friendly office spaces with greenery, natural wood, good lighting

**Step 7: Download and Use**
- **Action**: Click on generated image → View full size → Download → Copy → Share
- **Expected**: User can download images, copy to clipboard, or share directly from interface

### Key Demonstration Points:
✅ **Image Generator enabled** (toggle)  
✅ 4 image variations generated  
✅ Style control (realistic, illustration, minimalist, etc.)  
✅ Iterative refinement (follow-up prompts)  
✅ Specific use cases (social media, presentations, etc.)  
✅ Download and share options  
✅ Content credentials visible  
✅ Feedback mechanism (thumbs up/down)  

---

## Expected Behavior

### What Works:
- Creating images from text descriptions
- Generating 4 variations per prompt
- Various styles (photo, art, cartoon, 3D, illustration)
- Iterative modifications and refinements
- Specific sizes and formats
- Adding or removing elements
- Changing colors, composition, mood
- Downloading and sharing images

### What Doesn't Work:
- Creating images of real public figures
- Generating text within images (unreliable)
- Exact replication of copyrighted content
- Generating harmful or inappropriate content
- Creating photorealistic images of specific real people

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ❌ | Optional |
| Teams chats | ❌ | Not needed |
| My emails | ❌ | Not needed |
| Embedded files | ✅ | Optional (brand guidelines) |
| Public websites | ❌ | Optional |
| Web search | ❌ | Not needed |
| Only use specified sources | ❌ | Not applicable |
| People directory | ❌ | Not needed |
| Code Interpreter | ❌ | Not needed (different capability) |
| **Image Generator** | ✅ | **PRIMARY CAPABILITY** - toggle ON |

---

## Important Notes

### Image Generator Capability:
- **Technology**: Uses Microsoft Designer (powered by DALL-E)
- **Output**: Generates 4 images per prompt
- **Iterations**: Follow-up prompts modify original images without losing context
- **Download**: Images can be downloaded, copied, or shared
- **Content credentials**: Shows how image was created (AI-generated)
- **Feedback**: Users can give thumbs up/down on generated images
- **No license cost**: Available to Copilot Chat users with no metered usage

### Image Generation Tips:
**Good Prompts**:
- Be specific about style (realistic, cartoon, minimalist, 3D)
- Include color preferences
- Specify composition and perspective
- Describe mood and atmosphere
- Mention intended use (social media, presentation, print)

**Example Good Prompt**:  
"Create a realistic photo of a modern coffee shop interior with warm lighting, wooden furniture, plants, and people working on laptops. Cozy and inviting atmosphere. Shot from a corner angle."

**Example Vague Prompt**:  
"Create a nice office" (too vague, style unclear)

### Content Policies:
- No harmful or inappropriate content
- No real public figures or celebrities
- No copyrighted characters or logos
- No graphic violence or adult content
- Family-friendly content only

### Use Cases:
✅ Social media graphics and posts  
✅ Presentation backgrounds and visuals  
✅ Marketing campaign materials  
✅ Concept art and mockups  
✅ Blog post illustrations  
✅ Product visualization  
✅ Event flyers and posters  
✅ Website hero images  
✅ Training materials  
✅ Internal communications  

### License Requirements:
- **Image Generator**: Available to Copilot Chat users with no metered usage or Microsoft 365 Copilot license (no additional cost)

---

## Microsoft Learn References

- **Add the image generator capability to your agent**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/image-generator

- **Image generator examples**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/image-generator#image-generator-examples

- **Microsoft Designer**  
  https://designer.microsoft.com/

- **Agent capabilities**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/declarative-agent-manifest-1.6#capabilities-object
