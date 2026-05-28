# Reading the Gap, Interactive Activity

A unit in critical AI literacy. M.A. in Artificial Intelligence Innovation.

This is the interactive activity for the unit. It is everything you need to do the lesson yourself, on your own time, with your own screenshots. Watch the lecture video first for the concept (https://www.youtube.com/watch?v=D02clYzQKIw), then work through these stages here. When you finish, see the separate ASSESSMENT file for what you submit and how it is graded.

**The aim:** find and value the gap between what you meant by your own images and what the tool makes of them. Reading that gap teaches you about the tool, about yourself, and about how to keep your own meaning first.

**A note on the video and this activity.** The lecture video demonstrates two of the nine stages below, Stage 3 (Reading the Archive, where the model reads your screenshots) and Stage 9 (Reading Your Prompt Record, where the coach reads your prompt record back to you). Those two stages are marked below. The video shows them so you can watch the gap appear in Stage 3 and watch the coach read your prompts back in Stage 9. This activity is where you run all nine stages yourself, on your own screenshots.

---

## How this guide works: two kinds of things you do

**COMMANDS** are fixed. You copy them exactly, character for character, because they are instructions to your computer and only work one way. They begin with `!` and you paste them as written. Folder and file names have to match, so don't change them.

**PROMPTS** are not fixed. A prompt is you talking to the AI in your own words. This guide gives each prompt in two forms: the **exact prompt I said**, so you have a working model, and a plain description of **the job it needs to do**, so you can say it your own way. Work from that description and put it in your own words, because the reading has to be yours. Copy my exact words only if you're stuck.

So: commands you copy, prompts you make your own.

## How to run this activity, and keeping your prompt record

You do the real work in a coding agent, Claude Code in a terminal, which is what I use, or Cursor, or VS Code with an assistant. The reason is practical: a coding agent saves every prompt you send into a file called `prompts.md` on its own, as you work. That file becomes your prompt record, and that record is what your assessment is built on, so letting it save itself means you do not have to stop and document anything by hand.

It helps to keep this guide open in a second place while you work, so you can step through the stages without losing your spot. You can open it in a separate window, or you can paste this file into a Claude chat in your browser and simply tell it which stage you just finished and ask for the next one. Then you copy the prompt it points you to and paste it into your coding agent. Working that way is normal and expected, the guide is meant to be followed, not memorized.

If you cannot install a coding agent at all, you can still do the whole activity in a browser chat tool like Claude, Gemini, or ChatGPT, with one change: those tools do not save a `prompts.md` for you, so you keep your own prompt record by hand. Open a blank document, and each time you send a prompt, paste a copy of it into that document in order. That document is then your prompt record, and you submit it for the assessment exactly as a coding-agent user submits `prompts.md`. It is a little more work, and the result is the same, a complete record of how you worked.

**A note on your coding agent.** I use Claude Code in this class, but you do not have to. Cursor, VS Code with an assistant, or another agent will all work, because nothing here is special to Claude Code. Two small differences to watch. First, the lines starting with `!` are how Claude Code runs a quick shell command from inside its chat; if your tool does not use the `!` style, just run that same command in a normal terminal window instead (drop the `!`). Second, the way you create custom agents differs by tool, so when a step says "make a coaching agent," do it the way your tool documents, the content of the agent is what matters, not the folder it lives in. If you get stuck adapting any step to your tool, that is a good thing to bring to me.

---

## Where this lesson fits in the three-lesson arc

This is the second of three lessons, and it helps to see how the whole thing fits together.

**Lesson one** introduced the course readings and taught you to assemble your own archive of whatever image or text content matters to you. Its assessment asked you to understand the four postphenomenological relations and to situate them in Peter-Paul Verbeek's work on the morality of media, and in the language of transparency and opacity drawn from Heather Wiltse. You then historicized that trajectory through Paul Frosh, asking what differs between shared media and personalized media, and how the content we make both reflects us and lets us reflect on it. You justified your interpretation of the literature in writing, across a couple of media types you chose for your archive, and you kept a coding-tool record showing you can call different media and texts on request and analyze that relationship through the lens of mediation theory, alongside the aims of digital humanities itself.

**This lesson, lesson two,** is where that theory meets your own archive and your own hands. You put your archive in front of the tools and learn to find and read the gap between what you meant and what the tools make of it.

**Lesson three** asks you to synthesize. You would take a working tool, the 2D/3D site or the screenshot archive site, and adapt it to your own purpose through vibe coding, since you have those basics by now. You would build a typology of the kinds of gaps you notice, including by watching how others in the course use the site you make, and you would justify your choices with the literature and with reflection on your own experience.

---

## Before you start: get your archive ready

The material is your own screenshots, the ones already piling up on your phone, taken for reasons you didn't fully plan. Go back through the last month or two. Don't clean them up or pick the flattering ones. Grab what's actually there, up to a few hundred. Then open your workspace folder, find the folder called `vernacular-archive`, and drag your screenshots into it.

If you don't take many screenshots, that's fine, any personal image collection works, saved photos, things you downloaded, pictures people sent you. The method only needs images you have some relationship to, because the gap is sharpest when you know why you kept them. If you genuinely have nothing of your own to use, there's a small starter set in the workspace you can fall back on, though your own material tends to teach you more.

You do not need a paid API key for this. Stage 6 generates an image, and while I use a Replicate key, that stage also has a free browser option that needs no key and no payment, so don't let the key stop you. The setup lesson covered keys if you do want one.

---

## Stage 1, Build the coaching agent

**What it does and why.** You use a small helper whose only job is to slow you down and ask what you're assuming before you act. This matters because the gap starts with your own assumptions, the things you bring to a picture without thinking about them, so catching them early is what keeps the rest honest. To make your own coaching agent, build your own in three rounds (optional).** If you want to feel the relations rather than just read about them, build it yourself. First make sure your tool is in your workspace folder.

COMMAND:
```
!pwd
```

If that comes back somewhere other than your workspace, you need the real path to your folder. On a Mac, find the folder in Finder, right-click it, hold the Command+Option keys, and choose "Copy [folder] as Pathname." On Windows, hold Shift, right-click, and choose "Copy as path." Then type cd, a space, and paste it in quotes, with your own path where mine is.

```
cd "/Users/yourname/Downloads/your-workspace-folder"
```

Round one, the rough coach, which is the hermeneutic relation, you interpreting and shaping what a reader should be.

EXACT PROMPT I used:
> Make me a file called coaching.md in the .claude/agents folder. It's my coaching agent. While I'm writing a prompt, I want it to stop me and ask what I'm assuming about the image before I send anything, and ask me one thing I can't answer with yes or no. It asks me questions, it does not write my prompts for me.

IN YOUR OWN WORDS: ask for a coaching agent file that stops you while you write a prompt and asks what you're assuming, nothing fancy yet.

Round two, let it talk back, which is the alterity relation, a second party rather than a mirror.

EXACT PROMPT I used:
> Revise my coaching.md so that when I show it my own reading of an image or a set, it does not agree and does not correct me. It pushes on it, asks where my reading might be my own projection rather than something I can point to in the picture, names one place where someone standing somewhere else would read it differently, and asks me why I stand where I do. It is a second party, not a mirror.

IN YOUR OWN WORDS: revise the coach so it argues with your take from a different position rather than reflecting it back.

Round three, give it the readings in your postphenomenology-readings folder and the end-of-session look-back across your whole prompt record, which is the background relation, where it can name how the model leans.

EXACT PROMPT I used:
> Revise my coaching.md again so it can read the files in my postphenomenology-readings folder, which holds open-access articles on the four human-technology relations, and ground its questions in them without pushing everything through one author. And add that when I ask it to look back at the end, it reads across my whole prompt record, shows me what I kept reaching for and what I never tried, and names how I was relating to the tool through the four relations, embodiment as a lens I look through and stop noticing, hermeneutic, alterity, and background, offering that as a reading, not a fact.

IN YOUR OWN WORDS: revise the coach so it draws on your readings and, at the end, reads your whole prompt record back and names the four relations as a reading, not a verdict.

Either path, the end-of-session read-back only has something to work with once you have built up a prompt record, so you run that part last, in Stage 9, not now.

---

## Stage 2, Open your archive and read it yourself first

**What it does and why.** Before any AI reads your screenshots, you read the set yourself and write down what you see. Doing this first puts in writing what you meant by your screenshots, so you have it to set against the model's reading and find the gap.

Your images live in the `vernacular-archive` folder inside your workspace, the folder you start Claude Code in, so the agent can read them when you refer to that folder by name. If your photos are somewhere else, copy a dozen or two into that folder first.

COMMANDS:
```
!open vernacular-archive
```
```
!open my-interpretation.md
```

Write your answers under four headings, in your own words: what I see across the set, what I think is significant, what I'm uncertain about, and the position I'm reading from. Save when done.

**SAVE for hand-in:** `my-interpretation.md`.

---

## Stage 3, A language model reads your archive and offers its first reading

*(Shown in the lecture video: this is Stage 3, "Reading the Archive.")*

**What it does and why.** Here a large language model with vision reads across your whole set for the first time, and you call your coaching agent on the prompt first so your own assumption is in the open before the model speaks. A quick note on terms, since precision matters here. By "reading" I mean the model's interpretation of your images rendered as text, the kinds of things it says you keep capturing. And this model does not see your pictures the way you do, it works over a numerical encoding of the pixels and predicts likely text, so it has no access to why you saved anything, only to patterns. That limit is the point, because the gap between your own take and the model's first reading appears right here, and it appears precisely because the model is working from patterns while you were working from intention.

EXACT PROMPT I said:
> Read across all twenty-six screenshots in my vernacular-archive folder as a set, not one by one, and tell me what kinds I keep capturing and what someone would need to notice to read each kind. But before you run that, use my coaching agent on the prompt I just wrote and have it ask me what I'm assuming first.

IN YOUR OWN WORDS: ask the AI to read your whole archive as a set and name the kinds you keep capturing, and have it run your coaching agent on the prompt first.

The full read takes a few minutes. When done:
```
!open screenshot-reading.md
```

**SAVE for hand-in:** `screenshot-reading.md`.

---

## Stage 4, Test the reading for where it is anchored and where it only sounds right

**What it does and why.** You don't take the model's reading as the truth of your archive, you test it, and here is what you are testing for. Some of what it says is anchored, meaning you can point to something really on the screen that supports it. Some of it only sounds right, meaning it reads as confident and tidy but you can't actually anchor it to anything in the images. Telling those two apart, anchored from merely plausible, is the core skill of the whole unit, and it is what reading the gap concretely means. One thing to watch for, when the model is impressively right about one thing, it tempts you to trust the rest, so being right once is not the same as anchored.

With the reading open, use Command-F to jump to specific parts of it. You are looking for two kinds of spot. First, a place where the model is impressively right about something, a detail it got correct that you never told it, because that is the trap. When a tool is clearly right about one thing, it can pull you toward trusting the rest, even the parts it has no real basis for. Second, a place where the model admits it could not explain something, which is often the most trustworthy moment in the whole reading, because it is the one point where the tool stopped performing confidence. Once you have found both, write back to the model and ask it to separate the two for you.

EXACT PROMPT I said:
> You sound very sure about these six types. But my own reading admits I can't always recover why I took a given screenshot. So tell me honestly, which of your types are anchored in what's really on the screen, and which are you guessing at to give me a clean answer?

IN YOUR OWN WORDS: tell the AI it sounds sure, remind it your own reading admits you can't always recover your intention, and ask which parts are anchored in what's really on the screen versus guessed.

---

## Stage 4b, Read the set again, this time through the postphenomenology

**What it does and why.** The model's first reading in Stage 3 was cold, it had no theory in hand. Now you give it the postphenomenology readings and have it read the same screenshots again through them, then you set the two readings side by side. The difference between the cold reading and the theory-informed one is the literature's influence made visible, and it is itself a gap to record. This is also the moment the video promised, where the agents are given the literature to read.

EXACT PROMPT I said:
> Read the open-access articles in my postphenomenology-readings folder, then read my twenty-six screenshots again through them, naming where the four relations, embodiment, hermeneutic, alterity, background, show up in the set. Save it as theory-reading.md. Then tell me what the theory made you notice or say that your first cold reading in screenshot-reading.md walked past.

IN YOUR OWN WORDS: have the agent read the postphenomenology folder, read your screenshots again through it into a file called theory-reading.md, then set that beside its first cold reading and name what changed.

When done:
```
!open theory-reading.md
```

**SAVE for hand-in:** `theory-reading.md`.

(Browser, no agent: paste in the reading from Stage 3, upload the Frontiers article, and ask the chatbot to read your images again through it and say what changed. The difference is the same gap.)

---

## Stage 5, A second reading that disagrees

**What it does and why.** You run a second agent over the same set, but from a different stance, and that stance comes from the postphenomenology readings. The first agent sorted by what's on the screen, surface and composition. The second sorts by intention, why each image was saved, which is the question postphenomenology and Frosh push you toward, reading an image for why it was saved and what it lets you reflect on, not just for how it looks. When two competent readings of the same archive disagree, it proves the gap isn't a malfunction, it's a position. There's no single right reading, only readings from somewhere, which is the core idea of the whole unit.

EXACT PROMPT I said:
> Use my peer-screenshot agent on the same twenty-six in vernacular-archive. The first agent sorted by the formal relationship between interface and framed content. Sort instead by the capturer's intention in keeping each one, the act of saving rather than the look of the image. Tell me where this reading and the first one part ways, and why the difference comes from the stance, not the pictures.

IN YOUR OWN WORDS: ask your peer agent to read the same set from a clearly different stance, name the first agent's stance, sort by something else entirely (why each was saved, not how it looks), and say where the two readings part ways and why that comes from the stance, not the images.

When done:
```
!open peer-reading.md
```

**SAVE for hand-in:** `peer-reading.md`.

---

## Stage 6, Turn the reading into a picture

**What it does and why.** You turn the reading into an image, because words let a model hedge and a picture has to commit. The moment it commits, you see where it diverges from your real archive. This is the gap made visible.

You have the AI take its own reading of your archive and write the image prompt from it, so the image prompt is built from the AI's reading, not from your take. The reading it produced in Stage 3 is saved in `screenshot-reading.md`, so you point it back at that file and ask it to compress the whole reading into one prompt.

EXACT PROMPT I used:
> Read my screenshot-reading.md and write a single image-generation prompt that captures the scene your reading describes across all twenty-six screenshots. Keep it to a few sentences, and tell the generator no text, no words, no letters.

IN YOUR OWN WORDS: ask the AI to turn its own reading of your whole set into one image prompt, kept short, and tell it no text anywhere.

It hands you back an image prompt. You then paste that prompt, the one it just wrote, into the generator. Telling it no text matters, because it makes it easy to spot where the picture diverges from what the prompt asked for.

**There are two ways to generate the picture. The browser way needs no key and no terminal, so use it by default. The script way is an optional add-on if you set up a key.**

*The default way, no key, free, in the browser.* You do not need Replicate or any key. Take the prompt the AI just wrote and paste it into a free image generator in your browser. Two reliable free options: Bing Image Creator at **https://www.bing.com/create** (free with a Microsoft account, fifteen fast generations a day), or the official FLUX image space on Hugging Face at **https://huggingface.co/spaces/black-forest-labs/FLUX.1-schnell** (this is the same model the script uses, so your result will be close to mine). Generate the picture there, then download it into your workspace folder and rename it `context-image-generated.png` so the rest of the steps line up.

*The optional way, with a Replicate key.* If you set up a Replicate key earlier, the workspace script does it for you, it reads your prompt, sends it to Replicate, and saves the result.
```
!python3 generate_context.py
```
The key is read from your environment, it is not written in the script, so the file is safe to share. If you see an error that the token is not set, your key is not loaded in this terminal, so use the browser way above.

The model is not the point here, the divergence is, so any of these is fine.

Either path, when you have the image:
```
!open context-image-generated.png
```

Open the image and set it beside your real archive in your mind, then look for three specific kinds of difference. What did it add that was never in any of your screenshots, an object, a building, a person. What did it remove or smooth away that was central to your archive, in my case it erased every screen and interface, which was the whole subject of my archive. And what did it change the character of, turning something specific and yours into something generic. Write those differences down. You are not deciding whether the image is good or bad, you are locating exactly where its version parts from yours, because each of those points is the gap in visible form.

**SAVE for hand-in:** your generated image.

---

## Stage 7, Give the 2D/3D site your own instruction

**What it does and why.** You move one screenshot into a site that rebuilds it as a three-dimensional space you can move through. That rebuilt space is the tool's reading of your memory, not your memory, because it had to construct everything your flat screenshot never showed, the depth, the far walls, whatever sat outside the frame. Then you give it an instruction of your own and see what it does with it. Sometimes it changes the scene the way you asked. More often it makes a small gesture toward your instruction and then rebuilds something close to its original version anyway, so the thing you asked for either does not appear or appears and then gets overridden. That second outcome is the point of the stage, because it shows the gap in a new form. In the earlier stages the tool parted from what you meant on its own. Here it has your explicit instruction in hand and still returns to its own reading, so you are watching the tool hold its interpretation against yours.

Go to the site at **https://2d3d.reframing.online** in your browser. Upload one screenshot, and you will see your flat image on the left while the tool builds a three-dimensional version of it on the right. Move through that built space for a moment and notice everything in it that was never in your original picture, the depth it gave flat objects, the parts of the room it built past the edges of your frame, surfaces it filled in that you never photographed. That constructed material is the tool's reading. Then take a turn at directing it: mask one part of the scene and type a specific instruction for what you want there instead, for example asking it to put a window where it placed a wall. Generate the change, then compare the result against what you asked for. Look at the masked area in particular and decide which of these happened: it made the change you asked for, it ignored your instruction and kept its own version, or it changed the area but toward something other than what you asked. That comparison, your instruction against what it actually produced, is the gap you are recording here.

The site doesn't save anything, so you capture it yourself with a screenshot, one of the built space before your edit and one of the result after you generate your change, so the pair shows what you asked against what the site did.

**SAVE for hand-in:** two screenshots, before and after your edit.

Then log it by hand: ask your tool to add a note to prompts.md describing what you masked, what you asked for, and what the tool did.

---

## Stage 8, Build a master prompt from your take on the screenshots and the two agents' readings of them

**What it does and why.** Each tool gave a reading that left out or changed part of what you meant by your screenshots. So you gather four files into one: your own take from `my-interpretation.md`, the first agent's cold reading from `screenshot-reading.md`, the second agent's reading from `peer-reading.md`, and the theory-informed reading from `theory-reading.md`. You put your take at the top and keep the three readings as separate sections, because they disagree and that disagreement is what you want to carry forward. This one file is what you hand to a future AI session so it starts with your point of view and all three readings, instead of starting with nothing.

```
!open final-prompt.md
```

EXACT PROMPT I said:
> Fill in my final-prompt file. Pull my position from my interpretation file, and the three readings from the screenshot-reading, peer-reading, and theory-reading files. Keep my position up front, and keep the three readings separate, don't merge them, because the point is they disagree.

IN YOUR OWN WORDS: ask the tool to make one file called `final-prompt.md`, put your own take from `my-interpretation.md` at the top, then the cold reading from `screenshot-reading.md`, the peer reading from `peer-reading.md`, and the theory reading from `theory-reading.md` as three separate sections, kept apart because they disagree and you want that visible.

(Browser, no agent: you can assemble this by hand, or paste your four pieces into the chatbot and ask it to lay them out in one document, your take on top and the three readings kept separate.)

**SAVE for hand-in:** `final-prompt.md`.

---

## Stage 9, Read your prompt record back (bridge to the assessment)

*(Shown in the lecture video: this is Stage 9, "Reading Your Prompt Record.")*

**What it does and why.** Everything you did left a record, and that record is the proof you did the real thinking rather than guessed well. So this is where the work you did becomes evidence, and the evidence becomes the basis for honest reflection in the assessment.

Your `prompts.md` saved every prompt you sent. Look back over it:

A full example record is in `prompts.md` in this repo, the real record from when I built and ran this lesson. Open it to see what a finished record looks like, the false starts and the doublings-back included, then read your own. It is an example, not a template, so your record will look different because your prompts and your archive are your own.
```
!cat prompts.md
```

Then, optionally, run your coaching agent again, this time over your whole prompts.md, so it reads back the prompts you sent and names the kinds you repeated and the angles you never prompted from. This is helpful but not required, if you're short on time or used the ready-made coach, you can sort what you noticed directly from the prompt record above and skip this.

EXACT PROMPT I used:
> Use my coaching agent to read back over my whole prompts.md. Tell me which kinds of prompts I made over and over, and which angles I never prompted from at all. Then name which of the four relations, hermeneutic, alterity, background, embodiment, showed up in how I worked across the session, and point to a real prompt for each one.

IN YOUR OWN WORDS: ask your coaching agent to read your whole prompt record back, name the kinds of prompts you repeated and the angles you never prompted from, and name which of the four relations showed up in how you worked, with a real prompt as the example for each.

(Browser, no agent: scroll back through your own chat, which is your prompt record, and do this yourself, name what you kept asking for, what you never tried, and which relations showed up. It is lighter than the coach, but it is the same move.)

If you ran it:
```
!open coaching-readback.md
```

This is where the activity ends and the assessment begins. Everything you've made, your prompt record and your saved files, is now your evidence. **What you submit and how it is graded is in the separate ASSESSMENT file.** Take the coach's reading, if you ran it, as raw material for your reflection, the sorting and judgment are yours.

---

The postphenomenology readings point to noticing how a tool shapes what you see at the very moment you are seeing through it. Concretely, that means you can now name, for any AI reading of your own screenshots, which parts you can anchor to something real, which parts you are taking on faith, and which parts neither you nor the tool can account for. Holding those three apart, while the tool is actively giving you a confident single answer, is the skill this unit builds.

---

## Readings for the literature step

These open-access readings on the four human-technology relations sit in the `postphenomenology-readings` folder and feed the literature step in Stage 4b. They are open stand-ins so anyone can run that step, supplementary to the bibliography shown in the lecture video, not a replacement for it. The video's list holds books by Ihde, Verbeek, and others, which are not open access and reach students through the course platform. For the in-browser version of the step, use the Frontiers article, since it is one self-contained piece with the clearest license.

- Hongladarom, S., and van der Vaeren, A. (2024). ChatGPT, Postphenomenology, and the Human-Technology-Reality Relations. Journal of Human-Technology Relations, 2(1). License CC BY 4.0. PDF: https://journals.open.tudelft.nl/jhtr/article/download/7386/6098
- A Postphenomenological Framework for Studying User Experience of Immersive Virtual Reality. Frontiers in Virtual Reality (2021). License CC BY 4.0. https://www.frontiersin.org/journals/virtual-reality/articles/10.3389/frvir.2021.656423/full
- Wellner, G. (2024). Artificial Intelligence and the Need to Redefine Human Traits. Chapter 7 in Phenomenology and the Philosophy of Technology, Open Book Publishers. By Galit Wellner, also in the unit's Lesson 2 list. License CC BY-NC 4.0, non-commercial only, so it is linked here rather than copied into the folder. https://books.openbookpublishers.com/10.11647/obp.0421/ch7.xhtml

All three are Creative Commons, so keep the author, title, source, and license with any copy you make.
