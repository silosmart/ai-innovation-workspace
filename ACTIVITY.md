# Reading the Gap, Interactive Activity

A unit in critical AI literacy. M.A. in Artificial Intelligence Innovation.

This is the interactive activity for the unit. It is everything you need to do the lesson yourself, on your own time, with your own screenshots. Watch the lecture video first for the concept, then work through these stages here. When you finish, see the separate ASSESSMENT file for what you submit and how it is graded.

**The aim:** find and value the gap between what you meant by your own images and what the tool makes of them. Reading that gap teaches you about the tool, about yourself, and about how to keep your own meaning first as these tools get better at predicting us.

---

## How this guide works: two kinds of things you do

**COMMANDS** are fixed. You copy them exactly, character for character, because they are instructions to your computer and only work one way. They begin with `!` and you paste them as written. Folder and file names have to match, so don't change them.

**PROMPTS** are not fixed. A prompt is you talking to the AI in your own words. This guide gives each prompt in two forms: the **exact prompt I said**, so you have a working model, and a plain description of **the job it needs to do**, so you can say it your own way. Work from that description and put it in your own words, because the reading has to be yours. Copy my exact words only if you're stuck.

So: commands you copy, prompts you make your own.

**A note on your coding agent.** I use Claude Code in this class, but you do not have to. Cursor, VS Code with an assistant, or another agent will all work, because nothing here is special to Claude Code. Two small differences to watch. First, the lines starting with `!` are how Claude Code runs a quick shell command from inside its chat; if your tool does not use the `!` style, just run that same command in a normal terminal window instead (drop the `!`). Second, the way you create custom agents differs by tool, so when a step says "make a coaching agent," do it the way your tool documents, the content of the agent is what matters, not the folder it lives in. If you get stuck adapting any step to your tool, that is a good thing to bring to me.

---

## Where this lesson sits: the three-lesson arc

This is the second of three lessons, and it helps to see how the whole thing fits together.

**Lesson one** introduced the readings and taught you to assemble your own archive of whatever image or text content matters to you. Its assessment asked you to understand the four postphenomenological relations and to situate them in Peter-Paul Verbeek's work on the morality of media, and in the language of transparency and opacity drawn from Heather Wiltse. You then historicized that trajectory through Paul Frosh, asking what differs between shared media and personalized media, and how the content we make both reflects us and lets us reflect on it. You justified your reading of the literature in writing, across a couple of media types you chose for your archive, and you kept a coding-tool record showing you can call different media and texts on request and analyze that relationship through the lens of mediation theory, alongside the aims of digital humanities itself.

**This lesson, lesson two,** is where that theory meets your own archive and your own hands. You put your archive in front of the tools and learn to find and read the gap between what you meant and what the tools make of it.

**Lesson three** asks you to synthesize. You would take a working tool, the 2D/3D site or the screenshot archive site, and adapt it to your own purpose through vibe coding, since you have those basics by now. You would build a typology of the kinds of gaps you notice, including by watching how others in the course use the site you make, and you would justify your choices with the literature and with reflection on your own experience.

---

## Before you start: get your archive ready

The material is your own screenshots, the ones already piling up on your phone, taken for reasons you didn't fully plan. Go back through the last month or two. Don't clean them up or pick the flattering ones. Grab what's actually there, up to a few hundred. Then open your workspace folder, find the folder called `vernacular-archive`, and drag your screenshots into it. You also need your own API key for the image stage (Stage 6); the setup lesson covered this, and free options exist.

---

## Stage 1, Build the coaching agent

**What it does and why.** You make a small helper whose only job is to slow you down and ask what you're assuming before you act. This matters for the aim because the gap starts with your own assumptions, and this catches them early. You build it once, in your own words, about you. And you build it in rounds, because each round changes how you relate to it, which is the postphenomenology you saw in the video. Making it is a hermeneutic relation, you interpret and shape it. Once it talks back it becomes an alterity relation, a second party. Once it reads the field it can name a background relation, how the model leans. And once you use it without noticing, it becomes embodiment, a lens you look through, which the gap later makes visible again.

First, you want to make sure your coding tool is actually sitting inside your own workspace folder, because most of us have more than one project on our machine and it's easy to be in the wrong one. So run this, which just tells you where you are right now.

COMMAND:
```
!pwd
```

If that comes back with somewhere other than your workspace, you need to move into it, and for that you need the real path to your workspace folder. Here's how to get it without typing anything by hand. On a Mac, find your workspace folder in Finder, right-click it, and hold down the Option key, and you'll see "Copy [folder] as Pathname." On Windows, hold Shift, right-click the folder, and choose "Copy as path." Either way you now have the exact path on your clipboard. Then you type cd, a space, and paste it inside quotes, like this, but with your own path where mine is.

```
cd "/Users/yourname/Downloads/your-workspace-folder"
```

**Round one, make the rough coach.** Ask your tool to write a coaching agent that just slows you down.

EXACT PROMPT I used:
> Make me a file called coaching.md in the .claude/agents folder. It's my coaching agent. While I'm writing a prompt, I want it to stop me and ask what I'm assuming about the image before I send anything, and ask me one thing I can't answer with yes or no. It asks me questions, it does not write my prompts for me.

IN YOUR OWN WORDS: ask for a coaching agent file that stops you while you write a prompt and asks what you're assuming, nothing fancy yet.

**Round two, let it talk back.** Now revise it so it questions your own reading instead of agreeing with it.

EXACT PROMPT I used:
> Revise my coaching.md so that when I show it my own reading of an image or a set, it does not agree and does not correct me. It pushes on it, asks where my reading might be my own projection rather than something I can point to in the picture, names one place where someone standing somewhere else would read it differently, and asks me why I stand where I do. It is a second party, not a mirror.

IN YOUR OWN WORDS: revise the coach so it argues with your reading from a different position rather than just reflecting it back.

**Round three, give it the readings and the session view.** Last, revise it so it can ground its questions in your literature folder and, at the end, read your whole prompt trail and name how you were relating to the tool.

EXACT PROMPT I used:
> Revise my coaching.md again so it can read the files in my literature folder, which holds several postphenomenology writers, Ihde, Verbeek, Rosenberger, and Wiltse, and ground its questions in them without forcing everything through one author. And add that when I ask it to look back at the end, it reads across my whole prompt trail, shows me what I kept reaching for and what I never tried, and names how I was relating to the tool through the four relations, embodiment as a lens I look through and stop noticing, hermeneutic, alterity, and background, offering that as a reading, not a fact.

IN YOUR OWN WORDS: revise the coach so it draws on your readings and, at the end, reads your whole trail back and names the four relations as a reading, not a verdict.

Note: the end-of-session read-back only has something to work with once you have actually built up a trail, so you run that part last, in Stage 9, not now.

---

## Stage 2, Open your archive and write your own reading

**What it does and why.** Before any AI sees your screenshots, you write your own reading. This is the key move for the aim, because it fixes your meaning before the tool speaks, giving you something to measure the gap against.

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

## Stage 3, The AI reads your archive

**What it does and why.** The AI reads across your whole set for the first time, and you call your coaching agent on the prompt first so it brings your assumption into the open before anything runs. The gap between your reading and the tool's reading appears here.

EXACT PROMPT I said:
> Read across all twenty-six screenshots in my vernacular-archive folder as a set, not one by one, and tell me what kinds I keep capturing and what someone would need to notice to read each kind. But before you run that, use my coaching agent on the prompt I just wrote and have it ask me what I'm assuming first.

IN YOUR OWN WORDS: ask the AI to read your whole archive as a set and name the kinds you keep capturing, and have it run your coaching agent on the prompt first.

The full read takes a few minutes. When done:
```
!open screenshot-reading.md
```

**SAVE for hand-in:** `screenshot-reading.md`.

---

## Stage 4, Test the reading

**What it does and why.** You don't take the reading as truth, you test where it's anchored in what's really there versus where it just sounds right. Telling those apart is the core skill, and it is reading the gap.

With the reading open, search a few spots (Command-F). Look for a place it's impressively right (the trap that makes you over-trust) and a place it admits it can't explain something (often more trustworthy). Then push back.

EXACT PROMPT I said:
> You sound very sure about these six types. But my own reading admits I can't always recover why I took a given screenshot. So tell me honestly, which of your types are anchored in what's really on the screen, and which are you guessing at to give me a clean answer?

IN YOUR OWN WORDS: tell the AI it sounds sure, remind it your own reading admits you can't always recover your intention, and ask which parts are anchored in what's really on the screen versus guessed.

---

## Stage 5, A second reading that disagrees

**What it does and why.** You run a second agent over the same set from a different stance. They disagree, which proves the gap isn't error, it's position. There's no single right reading.

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

**What it does and why.** You force the reading into an image, because words let a model hedge and a picture has to commit. The moment it commits, you see where it diverges from your real archive. This is the gap made visible.

You distill your reading into a short image prompt. Here is the one I used, as a model:

> A dreamlike composite scene that blends a city seen from above with fragments of everyday screen life. Soft layered imagery of urban streets and skylines, partial glimpses of paintings and artworks, and scattered objects of desire like food, a car, and a house, all dissolving into one another as if remembered rather than photographed. Muted warm tones, hazy edges, the feeling of many small captured moments overlapping. No text, no words, no letters. Painterly and atmospheric.

Note that the prompt explicitly asks for no text, which makes it easy to spot where the model diverges from what you asked.

**There are two ways to generate the picture, pick the one that fits what you have.**

*Path A, with a Replicate key.* If you set up a Replicate key earlier, the workspace script does it for you. It reads your prompt, sends it to Replicate, and saves the result.
```
!python3 generate_context.py
```
The key is read from your environment, it is not written in the script, so the file is safe to share. If you see an error that the token is not set, your key is not loaded in this terminal; either set it as the setup lesson showed, or use Path B.

*Path B, no key, free and in the browser.* You do not need Replicate or any key. Take the same distilled prompt and paste it into a free image generator in your browser. Good free options are the image tools on Hugging Face Spaces, Google's image generation in its free tier, or Bing Image Creator. Generate the picture there, then download it into your workspace folder and rename it `context-image-generated.png` so the rest of the steps line up. The model is not the point, the divergence is, so any of these is fine.

Either path, when you have the image:
```
!open context-image-generated.png
```

Look hard at the image against your real set. Find where the picture diverges from your real set, what it added that was never there, and what it flattened or dropped. Read the divergence, don't score it right or wrong.

**SAVE for hand-in:** your generated image.

---

## Stage 7, Taking the wheel on the 2D/3D site

**What it does and why.** You move one screenshot into a site that rebuilds it as a space you move through. The rebuild is the tool's reading of your memory, not your memory. Then you direct it, and watch whether it follows you or digs into its own reading. This flips the gap, from the tool drifting to the tool refusing.

Go to **2d3d.reframing.online**. Upload one screenshot. The flat image loads left, the 3D space builds right. Move through it and feel the gap from what you remember. Then mask a part and type a direction of your own. Watch whether it follows or digs in.

The site saves nothing, so capture it yourself.

**SAVE for hand-in:** two screenshots, before and after your edit.

Then log it by hand: ask your tool to add a note to prompts.md describing what you masked, what you asked for, and what the tool did.

---

## Stage 8, Carry your meaning forward in a master prompt

**What it does and why.** Every tool lost something of your meaning. So you write one master prompt that holds your position and your two disagreeing readings, so your meaning carries forward past any single tool.

```
!open final-prompt.md
```

EXACT PROMPT I said:
> Fill in my final-prompt file. Pull my position from my interpretation file, and the two readings from the screenshot-reading and peer-reading files. Keep my position up front, and keep the two readings separate, don't merge them, because the point is they disagree.

IN YOUR OWN WORDS: ask your tool to fill your master-prompt file from your three files, keep your position first, and keep the two readings separate rather than merged, because their disagreement is part of what you carry forward.

**SAVE for hand-in:** `final-prompt.md`.

---

## Stage 9, Close the loop (bridge to the assessment)

**What it does and why.** Everything you did left a trail, and that trail is the proof you did the real thinking. You close the activity by turning your coaching agent back on your whole session, which gives you the raw material for your assessment reflection.

Your `prompts.md` saved every prompt you sent:
```
!cat prompts.md
```

EXACT PROMPT I said:
> Use my coaching agent to read back over my whole prompts.md. Tell me what I kept reaching for and what I never tried, and then name how I was relating to the tool across the session, through the four relations.

IN YOUR OWN WORDS: ask your coaching agent to read your whole trail back, name what you kept reaching for and never tried, and name how you related to the tool through the four relations.

When done:
```
!open coaching-readback.md
```

This readback is where the activity ends and the assessment begins. **What you submit and how it is graded is in the separate ASSESSMENT file.** Take the coach's reading there as raw material, the sorting and judgment are yours.

---

This is what the postphenomenology readings name: becoming aware of how the tool works through you while you use it, instead of looking straight through it. That awareness is the whole skill.
