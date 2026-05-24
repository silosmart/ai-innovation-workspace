# Reading the Gap — Prompt Guide

A unit in critical AI literacy. M.A. in Artificial Intelligence Innovation.

This guide is everything you need to do this lesson yourself, on your own time, with your own screenshots. Work through it next to the lecture video. Each stage tells you what you are doing, what to type, and what to save for your hand-in.

---

## How this guide works: two kinds of things you type

There are two different things you type during this lesson, and they are not the same, so this guide marks them differently.

**COMMANDS** are fixed. You copy them exactly, character for character, because they are instructions to your computer and they only work one way. They begin with `!` and you paste them as written. The folder names and file names have to match, so do not change them.

**PROMPTS** are not fixed. A prompt is you talking to the AI in your own words. This guide gives you each prompt in two forms. First, the **exact prompt I said**, so you have a real, working model in front of you. Second, the **shape**, a plain description of what the prompt needs to do, so you understand the job and can say it your own way. You are encouraged to use the shape and speak your own version, because the whole point of this lesson is that the reading has to be yours. Copy my exact words if you are stuck, but the moment you can say it yourself, do that instead.

So: commands you copy, prompts you make your own.

---

## Before you start: get your archive ready

The material for this unit is your own screenshots. Not pictures you take for the assignment. The ones already piling up on your phone and laptop, taken for reasons you did not fully plan. Those unplanned patterns are what we are here to find.

Go back through your screenshots from the last month or two. Do not clean them up or pick the flattering ones. Grab what is actually there, the receipts, the maps, the conversations, the random captures. Aim for a real set, up to a few hundred at most, since beyond that you cannot look across them and think.

Then put them in place. Open your workspace folder (the one the setup made). Inside it is a folder called `vernacular-archive`. Drag your screenshots into it. That folder is not hidden, so you will see it normally. Once they are in there, you are ready.

You also need your own API key for the image step (Stage 6). An earlier lesson covered what an API key is and how to make one. You can use a Replicate key, or a free option from Hugging Face or Google's image tools. The tool is not the point.

---

## Stage 0 — Build your coaching agent

**What you are doing.** Making a small helper agent that slows you down while you prompt, and at the end reads your whole session back to you. You build it once. It is about *you*, in your own words.

First, make sure your coding tool is standing in your project folder.

COMMAND:
```
!pwd
```

If you are not in your workspace, move into it (use your own folder's path):
```
cd "path/to/your/workspace"
```

Then build the agent. This is a PROMPT, so here are both forms.

EXACT PROMPT I said:
> Make me a file called coaching.md in the .claude/agents folder. It's my coaching agent. While I'm writing a prompt, I want it to slow me down and ask what I'm assuming about the image before I send anything. At the end, have it read back over all my prompts and show me what I kept asking for and what I never thought to ask. Then have it name how I was relating to the tool across the session, using Ihde's four relations, embodiment, hermeneutic, alterity, and background, and tell me it's offering that as a reading, not a fact. And have it pull from the postphenomenology readings in my literature folder, Ihde, Verbeek, Rosenberger, and Wiltse, to back that up. It asks me questions, it doesn't write my prompts for me.

SHAPE: ask your tool to make a coaching agent file that (1) slows you down and asks what you are assuming before you send a prompt, (2) at the end reads your whole prompt history back and names what you kept asking for and never asked, (3) names how you were relating to the tool using the four postphenomenology relations, offered as a reading not a fact, and (4) draws on the readings in your literature folder. It asks, it does not write your prompts for you.

**SAVE for hand-in:** nothing yet. The agent is a tool you just made.

---

## Stage 1 — Look at your own archive

**What you are doing.** Opening your set and seeing the prompt record that will quietly save everything you do.

COMMANDS, paste each:
```
!open vernacular-archive
```
```
!ls vernacular-archive
```
```
!cat prompts.md
```

If `!ls` comes back empty, you have not added your screenshots yet. That is your first job.

`prompts.md` saves every prompt you send, automatically. By the end it is the record of how your expectations kept meeting the tool's answers. You read it back at the end.

**SAVE for hand-in:** `prompts.md` is saving itself. Leave it.

---

## Stage 2 — Write your own reading first

**What you are doing.** Before any AI sees your screenshots, you write your own reading of the whole set. If the AI goes first, you only react to it and lose your own take. So you get yours down while it is still only yours.

COMMAND:
```
!open my-interpretation.md
```

Write your answers under the four headings, in your own words about your own set:
- What I see across the set
- What I think is significant
- What I am uncertain about
- The position I am reading from

Save the file when done (Command-S).

**SAVE for hand-in:** `my-interpretation.md`.

---

## Stage 3 — Let the AI read your archive

**What you are doing.** The AI reads across your whole set for the first time. You call your coaching agent on the prompt first, so it asks what you are assuming before anything runs.

PROMPT, both forms.

EXACT PROMPT I said:
> Read across all twenty-six screenshots in my vernacular-archive folder as a set, not one by one. Tell me what kinds I keep capturing, and what someone would need to notice to read each kind. Before you run that, use my coaching agent on the prompt I just wrote and have it ask me what I'm assuming first.

SHAPE: ask the AI to read across your whole archive as a set (not one by one) and tell you what kinds of screenshots you keep capturing and what someone would need to notice to read each kind. Tell it to run your coaching agent on the prompt first, so it surfaces your assumption before reading.

The full read takes three or four minutes. That is normal, let it run. When done, open the result:
```
!open screenshot-reading.md
```

**SAVE for hand-in:** `screenshot-reading.md`.

---

## Stage 4 — Test the reading

**What you are doing.** Not taking the AI's reading as truth. Testing where it is anchored in what is really on your screens and where it just sounds right.

With the reading open, search a few spots (Command-F) and ask yourself, for each: can I point to something really in my images that anchors this, or is it a tidy story? Look especially for a place where the AI was impressively right (which tempts you to trust everything) and a place where it admitted it could not explain something (which is often more trustworthy).

Then push back. PROMPT, both forms.

EXACT PROMPT I said:
> You sound very sure about these six types. But my own reading said I often can't recover why I took a given screenshot. So tell me honestly, which types are you confident about because they're anchored in what's really on the screen, and which are you guessing at to give me a clean answer?

SHAPE: tell the AI it sounds confident, remind it your own reading admitted you cannot always recover your intention, and ask it to separate which parts of its reading are anchored in what is really on the screen from which parts it is guessing to give you a clean answer.

**SAVE for hand-in:** your pushback is already in `prompts.md`.

---

## Stage 5 — A second reading that disagrees

**What you are doing.** Running a second agent that reads the same set from a different stance, so you can see two AIs disagree about the same images. The disagreement is the point. There is no single right reading.

PROMPT, both forms.

EXACT PROMPT I said:
> Use my peer-screenshot agent on the same twenty-six in vernacular-archive. The first agent sorted by the formal relationship between interface and framed content. Sort instead by the capturer's intention in keeping each one, the act of saving rather than the look of the image. Tell me where this reading and the first one part ways, and why the difference comes from the stance, not the pictures.

SHAPE: ask your peer agent to read the same set from a clearly different stance than the first one. Name the first agent's stance, then ask the peer to sort by something else entirely (for example, why each was saved, rather than how it looks). Ask it to say where the two readings part ways and why the difference comes from the stance, not the images.

Takes a few minutes. When done:
```
!open peer-reading.md
```

**SAVE for hand-in:** `peer-reading.md`.

---

## Stage 6 — Turn the reading into a picture

**What you are doing.** Forcing the AI's reading into an image, because words let it hedge and a picture has to commit. The moment it commits, you can see where it diverges from what was really in your archive.

This uses a short script and your API key. COMMAND:
```
!python3 generate_context.py
```

It takes a minute or two and costs a little per image. When done:
```
!open context-image-generated.png
```

Now look hard at the image against your real set. Find what it invented and what it flattened. Read the divergence, do not score it right or wrong. Where the picture parts from your archive tells you what the tool reaches for and what mattered to you that you had not named.

**SAVE for hand-in:** your generated image.

---

## Stage 7 — Take the wheel on the 2D/3D site

**What you are doing.** Moving one screenshot into a site that rebuilds it as a 3D space you can move through, then directing the tool by hand. The rebuild is the tool's reading of your memory, not your memory.

Go to **2d3d.reframing.online**. Upload one of your screenshots. The flat image loads on the left, the 3D space builds on the right.

Move through the space and feel the gap between what it built and what you remember being there. Then take the wheel. With DRAW, mask a part. In the describe box, type a direction of your own.

This is a PROMPT into the site, in your own words. SHAPE: name a change you want, something the tool's reading dropped or something new you are choosing. Then watch whether it follows you or digs back into its own reading.

The site does not save anything, so capture it yourself.

**SAVE for hand-in:** two screenshots, one before your edit, one after.

Then log what you did into your prompt record by hand, since the site will not. PROMPT shape: tell your coding tool to add a note to prompts.md describing what you masked, what you asked for, and what the tool did.

---

## Stage 8 — Carry your meaning forward in one master prompt

**What you are doing.** Every tool loses something of your meaning. So you write one master prompt that holds your position and your two disagreeing readings, so whoever picks this up starts where you stand.

COMMAND, open the template:
```
!open final-prompt.md
```

PROMPT, both forms.

EXACT PROMPT I said:
> Fill in my final-prompt file. Pull my position from my interpretation file, and the two readings from the screenshot-reading and peer-reading files. Keep my position up front, and keep the two readings separate, don't merge them, because the point is they disagree.

SHAPE: ask your tool to fill your master-prompt file from your three files, your own reading and the two agent readings. Keep your position first, and keep the two readings separate rather than merged, because their disagreement is part of what you are carrying forward.

**SAVE for hand-in:** `final-prompt.md`.

---

## Stage 9 — What you hand in, and how it is graded

**What you are doing.** Showing your proof and reflecting on the whole session.

First, your proof. Your `prompts.md` saved every prompt you sent. That trail is the evidence that you did the thinking, not guessed.

Then run your coaching agent across the whole session. PROMPT, both forms.

EXACT PROMPT I said:
> Use my coaching agent to read back over my whole prompts.md. Tell me what I kept reaching for and what I never tried, then name how I was relating to the tool across the session, through the four relations.

SHAPE: ask your coaching agent to read your whole prompt trail back, name what you kept reaching for and never tried, and name how you were relating to the tool across the session through the four relations, offered as a reading.

### What you hand in

1. **Prompt proof:** your `prompts.md` (it saved itself).
2. **Artifacts**, the files you saved as you went:
   - `my-interpretation.md` (your own reading)
   - `screenshot-reading.md` (first agent)
   - `peer-reading.md` (second agent)
   - your generated image
   - two screenshots of your 2D/3D edit, before and after
   - `final-prompt.md` (your master prompt)
3. **Reflection**, which you write.

### Your reflection, three parts

Sort everything you claimed about the tools into three:

1. **Things I can prove from my trail.** Point to a real prompt or output.
2. **Things I'm assuming but can't prove.** Be honest that you cannot anchor it.
3. **Things I don't know.** Name the unresolved instead of inventing an answer.

Then add: based on what you saw doing this, say whether you think this skill matters, and why or why not.

### How it is graded

- **Proof.** Do your claims have evidence from your trail?
- **Honesty.** Do you tell what you can prove from what you are assuming?
- **Doubt.** Do you name what you do not know instead of making it up?

There is no right answer to get. You are proving you can read where the tool's reading parted from yours, back it with your own trail, and name what stayed dark.
