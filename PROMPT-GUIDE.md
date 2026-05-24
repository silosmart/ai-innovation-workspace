# Reading the Gap — Prompt Guide

A unit in critical AI literacy. M.A. in Artificial Intelligence Innovation.

This guide is everything you need to do this lesson yourself, on your own time, with your own screenshots. The stages here match the stages in the video exactly, by name, so you can follow along. Work through it next to the lecture.

**The aim:** find and value the gap between what you meant by your own images and what the tool makes of them. Reading that gap teaches you about the tool, about yourself, and about how to keep your own meaning first as these tools get better at predicting us.

---

## How this guide works: two kinds of things you do

**COMMANDS** are fixed. You copy them exactly, character for character, because they are instructions to your computer and only work one way. They begin with `!` and you paste them as written. Folder and file names have to match, so don't change them.

**PROMPTS** are not fixed. A prompt is you talking to the AI in your own words. This guide gives each prompt in two forms: the **exact prompt I said**, so you have a working model, and the **shape**, a plain description of the job so you can say it your own way. Use the shape and speak your own version, because the reading has to be yours. Copy my exact words only if you're stuck.

So: commands you copy, prompts you make your own.

---

## Where this lesson sits: the three-lesson arc

This is the second of three lessons, and it helps to see the whole shape.

**Lesson one** introduced the readings and taught you to assemble your own archive of whatever image or text content matters to you. Its assessment asked you to understand the four postphenomenological relations and to situate them in Peter-Paul Verbeek's work on the morality of media, and in the language of transparency and opacity drawn from Heather Wiltse. You then historicized that trajectory through Paul Frosh, asking what differs between shared media and personalized media, and how the content we make both reflects us and lets us reflect on it. You justified your reading of the literature in writing, across a couple of media types you chose for your archive, and you kept a coding-tool record showing you can call different media and texts on request and analyze that relationship through the lens of mediation theory, alongside the aims of digital humanities itself.

**This lesson, lesson two,** is where that theory meets your own archive and your own hands. You put your archive in front of the tools and learn to find and read the gap between what you meant and what the tools make of it.

**Lesson three** asks you to synthesize. You would take a working tool, the 2D/3D site or the screenshot archive site, and adapt it to your own purpose through vibe coding, since you have those basics by now. You would build a typology of the kinds of gaps you notice, including by watching how others in the course use the site you make, and you would justify your choices with the literature and with reflection on your own experience.

---

## Before you start: get your archive ready

The material is your own screenshots, the ones already piling up on your phone, taken for reasons you didn't fully plan. Go back through the last month or two. Don't clean them up or pick the flattering ones. Grab what's actually there, up to a few hundred. Then open your workspace folder, find the folder called `vernacular-archive`, and drag your screenshots into it. You also need your own API key for the image stage (Stage 6); the setup lesson covered this, and free options exist.

---

## Stage 1, Build the coaching agent

**What it does and why.** You make a small helper whose only job is to slow you down and ask what you're assuming before you act. This matters for the aim because the gap starts with your own assumptions, and this catches them early. You build it once, in your own words, about you.

First check you're in your workspace.

COMMAND:
```
!pwd
```

If you need to move into it (use your own path):
```
cd "path/to/your/workspace"
```

EXACT PROMPT I said:
> Make me a file called coaching.md in the .claude/agents folder. It's my coaching agent. While I'm writing a prompt, I want it to slow me down and ask what I'm assuming about the image before I send anything. At the end, have it read back over all my prompts and show me what I kept asking for and what I never thought to ask. Then have it name how I was relating to the tool across the session, using Ihde's four relations, embodiment, hermeneutic, alterity, and background, and tell me it's offering that as a reading, not a fact. And have it pull from the postphenomenology readings in my literature folder, Ihde, Verbeek, Rosenberger, and Wiltse, to back that up. It asks me questions, it doesn't write my prompts for me.

SHAPE: ask your tool to make a coaching agent that slows you down and asks what you're assuming, reads your whole prompt history back at the end, names how you related to the tool through the four relations as a reading not a fact, and draws on the readings in your literature folder. It asks, it doesn't write your prompts.

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

**What it does and why.** The AI reads across your whole set for the first time, and you call your coaching agent on the prompt first so it surfaces your assumption. The gap between your reading and the tool's appears here.

EXACT PROMPT I said:
> Read across all twenty-six screenshots in my vernacular-archive folder as a set, not one by one, and tell me what kinds I keep capturing and what someone would need to notice to read each kind. But before you run that, use my coaching agent on the prompt I just wrote and have it ask me what I'm assuming first.

SHAPE: ask the AI to read your whole archive as a set and name the kinds you keep capturing, and have it run your coaching agent on the prompt first.

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

SHAPE: tell the AI it sounds sure, remind it your own reading admits you can't always recover your intention, and ask which parts are anchored in what's really on the screen versus guessed.

---

## Stage 5, A second reading that disagrees

**What it does and why.** You run a second agent over the same set from a different stance. They disagree, which proves the gap isn't error, it's position. There's no single right reading.

EXACT PROMPT I said:
> Use my peer-screenshot agent on the same twenty-six in vernacular-archive. The first agent sorted by the formal relationship between interface and framed content. Sort instead by the capturer's intention in keeping each one, the act of saving rather than the look of the image. Tell me where this reading and the first one part ways, and why the difference comes from the stance, not the pictures.

SHAPE: ask your peer agent to read the same set from a clearly different stance, name the first agent's stance, sort by something else entirely (why each was saved, not how it looks), and say where the two readings part ways and why that comes from the stance, not the images.

When done:
```
!open peer-reading.md
```

**SAVE for hand-in:** `peer-reading.md`.

---

## Stage 6, Turn the reading into a picture

**What it does and why.** You force the reading into an image, because words let a model hedge and a picture has to commit. The moment it commits, you see where it diverges from your real archive. This is the gap made visible.

This uses a script and your API key:
```
!python3 generate_context.py
```

When done:
```
!open context-image-generated.png
```

Look hard at the image against your real set. Find what it invented and what it flattened. Read the divergence, don't score it right or wrong. (Free image tools exist if you don't use Replicate, see the setup.)

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

SHAPE: ask your tool to fill your master-prompt file from your three files, keep your position first, and keep the two readings separate rather than merged, because their disagreement is part of what you carry forward.

**SAVE for hand-in:** `final-prompt.md`.

---

## Stage 9, Proof and assessment

**What it does and why.** Everything you did left a trail, and that trail is the proof you did the real thinking. You close the loop by turning the coaching agent on the whole session.

Your `prompts.md` saved every prompt you sent:
```
!cat prompts.md
```

EXACT PROMPT I said:
> Use my coaching agent to read back over my whole prompts.md. Tell me what I kept reaching for and what I never tried, and then name how I was relating to the tool across the session, through the four relations.

SHAPE: ask your coaching agent to read your whole trail back, name what you kept reaching for and never tried, and name how you related to the tool through the four relations.

When done:
```
!open coaching-readback.md
```

### What you hand in

1. **Prompt proof:** your `prompts.md` (it saved every prompt you sent).
2. **Artifacts:** your own reading, the two agent readings, your generated image, two before/after screenshots of your site edit, your master prompt.
3. **Reflection:** you write it.

### Your reflection, three parts

Sort everything you claimed about the tools into three:
1. **What I can prove from my trail.** Point to a real prompt or output.
2. **What I'm assuming.** Honest that you can't anchor it.
3. **What I don't know.** Named, not invented.

Then add: based on what you saw doing this, say whether you think this skill matters, and why.

### How it is graded

Proof (do your claims have evidence from your trail), honesty (do you separate proof from assumption), and doubt (do you name what you don't know). There is no right answer to get.

---

This is what the postphenomenology readings name: becoming aware of how the tool works through you while you use it, instead of looking straight through it. That awareness is the whole skill.
