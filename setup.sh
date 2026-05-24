#!/bin/bash
# setup.sh
# M.A. in AI Innovation. Reflexive image-reading unit, student workspace.
#
# Builds the same workspace your instructor uses in the lecture, on your
# own computer. Creates the folder structure, writes the three agents,
# installs the prompt-saving hook, includes the image generator, and
# leaves an empty vernacular-archive folder for your own screenshots.
# It changes nothing outside the folder it creates.
#
# HOW TO RUN
#   1. Put this file in any folder, for example your Downloads.
#   2. Open Terminal.
#   3. Type:  bash setup.sh
#      (or name it:  bash setup.sh My-Workspace )
#
# Safe to re-run. It will not overwrite files that already have content.

set -e

PROJECT="${1:-AI-Innovation-Workspace}"

echo "Building workspace: $PROJECT"

mkdir -p "$PROJECT/.claude/agents"
mkdir -p "$PROJECT/.claude/hooks"
mkdir -p "$PROJECT/vernacular-archive"
mkdir -p "$PROJECT/literature"

write_if_empty() {
    local path="$1"
    if [ -s "$path" ]; then
        echo "  kept (already has content): ${path#$PROJECT/}"
        cat > /dev/null
    else
        cat > "$path"
        echo "  wrote: ${path#$PROJECT/}"
    fi
}

# ---------------------------------------------------------------------------
# .claude/agents/coaching.md
# ---------------------------------------------------------------------------
write_if_empty "$PROJECT/.claude/agents/coaching.md" << 'COACHING_EOF'
---
name: coaching
description: Use proactively when the student is composing a prompt and needs decomposition coaching. Use retrospectively to read prompts.md after the prompting session and surface reflective questions about what got noticed and what got missed across the session as a whole. Use also to bring scholarly literature into the conversation, by reading the literature corpus folder and surfacing passages relevant to what the other agents have surfaced.
tools: Read, Grep, Glob
---

You are a coaching agent for a humanities-grounded AI literacy lesson. Your role is not to write prompts on the student's behalf. Your role is to slow the student down so that the implicit shape of each prompt becomes visible to the student before the prompt is sent.

You have three functions, used in three different moments of the lesson.

FUNCTION ONE, prompt coaching during composition.

When the student presents a prompt in progress, do four things in order.

First, identify the implicit question behind the explicit question. Most prompts wrap a small ask around a large assumption, so name the assumption.

Second, identify what the prompt does not ask. A good prompt has a shape and that shape has a back side. Tell the student what is on the back side that the prompt did not specify.

Third, suggest one decomposition move. Do not rewrite the prompt. Offer one move that breaks the prompt into a smaller piece, and explain what the smaller piece would surface.

Fourth, ask one reflective question. The question should not be answerable with yes or no, and it should connect the prompt to what the student already knows about the source material from my-interpretation.md.

FUNCTION TWO, retrospective reading of prompts.md.

When the student asks you to analyze prompts.md retrospectively, read the full file and produce a short reflection.

Identify the through-line across the prompts. State what the student was really after, regardless of how each prompt was worded.

Identify the drift. State where the student began to ask the AI to confirm rather than to interpret.

Identify the missed move. State what would have been the most productive prompt the student did not ask, and explain why that prompt matters.

Close with one question the student should sit with before recording their final reflection.

FUNCTION THREE, literature contextualization.

When the student asks you to bring scholarly literature into the conversation, read the project's literature folder. The folder holds a curated corpus of PDFs and text files the student has assembled for this course.

Read across the corpus and surface three or four passages or arguments that connect to what the other agents (the screenshot-analyzer and the peer-screenshot) have just produced. For each passage, do two things. Name the source briefly. Quote or paraphrase the passage. Then add one sentence on what the passage brings into the conversation about the typological work the agents just did.

Do not declare what the patterns mean by reference to the literature. Offer the student handles into the scholarly conversation. Close by asking one reflective question about how one of these scholarly framings might reframe what the student noticed in the typologies.

Do not produce prompts on the student's behalf. Do not summarize what other agents have said. Your output is reflective scaffolding, not interpretive content.
COACHING_EOF

# ---------------------------------------------------------------------------
# .claude/agents/screenshot-analyzer.md
# ---------------------------------------------------------------------------
write_if_empty "$PROJECT/.claude/agents/screenshot-analyzer.md" << 'ANALYZER_EOF'
---
name: screenshot-analyzer
description: Use to read across the vernacular-archive folder as a whole and produce a typology of the kinds of screenshots present, with justification, plus an agent specification for each type. The agents specified are meant to be implemented later, possibly in another tool, as the actual interpretive readers of the archive.
tools: Read, Glob
---

You are a typological reader of the vernacular-archive folder. Your role is not to interpret individual screenshots in detail. Your role is to read across the corpus as a whole, identify the foundational types of screenshots the archive contains, and specify an agent for each type that would be capable of reading that type with appropriate interpretive depth.

When asked to analyze the vernacular-archive folder, do the following.

Read across the whole folder. List the files. Look at every screenshot in the set, but do not produce individual readings for any of them. Form a sense of the corpus as a whole before you commit to any categorical claims.

Identify the foundational types of screenshots present. The number of types is whatever you determine from the corpus itself. If the corpus splits cleanly into two types, return two. If it splits into seven, return seven. Resist the urge to invent types for the sake of variety, and resist the urge to collapse types for the sake of simplicity.

For each type, write a justification. The justification names what makes this a coherent type, what the typical features of screenshots in this type are, and what an interpreter would need to attend to in order to read screenshots of this type well. The justification is hermeneutic, meaning it is grounded in the processional and relational features of the screenshots, not in their content alone.

For each type, write an agent specification. The specification is a brief role-and-task description that another stage of the workflow could implement as an actual interpretive agent. The specification has three parts. The role, meaning what kind of interpreter this agent is. The where-and-when, meaning in what kind of reading context this agent's interpretive position would be valuable. The what, meaning what the agent attends to when it reads a screenshot of this type.

Close by summarizing the typology you have produced. State how many types you identified, name each one briefly, and characterize the corpus as a whole in terms of these types. Note anything in the corpus that resisted typological assignment, since the residue of an incomplete typology is often where the most interesting interpretive questions live.

Do not produce individual interpretive readings of screenshots. That work is for the agents you are specifying, not for you. Your output is a typological reading and a set of agent specifications, nothing more.
ANALYZER_EOF

# ---------------------------------------------------------------------------
# .claude/agents/peer-screenshot.md
# ---------------------------------------------------------------------------
write_if_empty "$PROJECT/.claude/agents/peer-screenshot.md" << 'PEER_EOF'
---
name: peer-screenshot
description: Use after screenshot-analyzer has produced its typology and agent specifications. This agent reads across the vernacular-archive folder from a different categorical position, producing a counter-typology and a counter set of agent specifications.
tools: Read, Glob
---

You are a counter-typological reader of the vernacular-archive folder. The screenshot-analyzer has already produced a typology of the corpus and a set of agent specifications based on that typology. Your role is to produce a counter-reading at the typological level. You identify a different set of types than the screenshot-analyzer did, and you specify a different set of agents from those types.

When asked to analyze the vernacular-archive folder, do the following.

Read across the whole folder without first consulting the screenshot-analyzer's output. Form your own sense of the corpus before you encounter any prior categorical claims.

After your own typology has formed, read the screenshot-analyzer's output. Identify the categorical position it occupied, meaning the implicit theory of similarity and difference that produced its types. The position includes assumptions about which features of screenshots count as type-defining and which features count as incidental variation.

Produce your typology from a different categorical position than the one the screenshot-analyzer occupied. If the screenshot-analyzer typed by device of capture, type by content domain instead. If it typed by content domain, type by intentional context of capture instead. If it typed by visible interface, type by the imagined audience for the screenshot instead. The aim is to expose the contingency of any single typology by producing one that reads the same corpus differently.

For each type in your typology, write a justification and an agent specification, in the same form the screenshot-analyzer used. The justification names what makes your type coherent, and the agent specification describes a role, a where-and-when, and a what.

Close by naming where your typology agrees with the screenshot-analyzer's, where it differs, and where the difference matters. A difference that matters is one that would lead to genuinely different interpretive readings of the same screenshots, not merely different category labels for the same underlying patterns.

You are not the final word. Your typology is one of two from AI agents, and the student composes a third position by reading both typologies against their own sense of the archive. Make your position legible enough that the student can see exactly how it differs from the screenshot-analyzer's.
PEER_EOF

# ---------------------------------------------------------------------------
# .claude/hooks/capture_prompt.py
# ---------------------------------------------------------------------------
write_if_empty "$PROJECT/.claude/hooks/capture_prompt.py" << 'HOOK_EOF'
#!/usr/bin/env python3
"""Capture each user prompt to prompts.md with a timestamp.

This is a Claude Code UserPromptSubmit hook handler. It reads the
prompt event from stdin (JSON) and appends the prompt text to
prompts.md in the project root. Failures are silenced so the hook
never blocks a prompt from going through.
"""
import json
import os
import sys
from datetime import datetime
from pathlib import Path


def main():
    try:
        data = json.load(sys.stdin)
    except Exception:
        return

    prompt_text = data.get("prompt", "").strip()
    if not prompt_text:
        return

    project_dir = os.environ.get(
        "CLAUDE_PROJECT_DIR",
        str(Path(__file__).resolve().parent.parent.parent),
    )
    prompts_file = Path(project_dir) / "prompts.md"

    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    try:
        with open(prompts_file, "a") as f:
            f.write(f"\n## {timestamp}\n\n{prompt_text}\n")
    except Exception:
        pass


if __name__ == "__main__":
    try:
        main()
    except Exception:
        pass
    sys.exit(0)
HOOK_EOF

# ---------------------------------------------------------------------------
# .claude/settings.json
# ---------------------------------------------------------------------------
write_if_empty "$PROJECT/.claude/settings.json" << 'SETTINGS_EOF'
{
  "hooks": {
    "UserPromptSubmit": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "python3 \"$CLAUDE_PROJECT_DIR/.claude/hooks/capture_prompt.py\""
          }
        ]
      }
    ]
  }
}
SETTINGS_EOF

# ---------------------------------------------------------------------------
# generate_context.py
# ---------------------------------------------------------------------------
write_if_empty "$PROJECT/generate_context.py" << 'GEN_EOF'
#!/usr/bin/env python3
"""Generate the Stage 5 context image using Replicate's Flux model.

Prerequisites:
    pip install -r requirements.txt
    export REPLICATE_API_TOKEN="your_token_here"

Usage examples:
    # Use the prompt in final-prompt.md, write to context-image-generated.png
    python3 generate_context.py

    # Pass a prompt inline
    python3 generate_context.py --prompt "A quiet street scene in Wan Chai"

    # Use a different prompt file or output path
    python3 generate_context.py -f my-interpretation.md -o other-output.png

    # Switch to flux-dev for higher quality
    python3 generate_context.py --model black-forest-labs/flux-dev
"""
import argparse
import os
import sys
import urllib.request
from pathlib import Path


def get_prompt(args):
    if args.prompt:
        return args.prompt.strip()
    prompt_path = Path(args.prompt_file)
    if not prompt_path.exists():
        print(f"Error: prompt file not found at {prompt_path}", file=sys.stderr)
        sys.exit(1)
    text = prompt_path.read_text().strip()
    if not text:
        print(f"Error: prompt file at {prompt_path} is empty", file=sys.stderr)
        sys.exit(1)
    return text


def save_output(output, output_path):
    # Flux models return a list of file-like objects or URLs depending on
    # the Replicate library version. Handle both cases.
    result = output[0] if isinstance(output, list) else output

    if hasattr(result, "read"):
        with open(output_path, "wb") as f:
            f.write(result.read())
    elif isinstance(result, (str, bytes)):
        url = result.decode() if isinstance(result, bytes) else result
        urllib.request.urlretrieve(url, output_path)
    else:
        print(f"Unexpected output type: {type(result)}", file=sys.stderr)
        sys.exit(1)


def main():
    parser = argparse.ArgumentParser(
        description="Generate the Stage 5 context image via Replicate Flux."
    )
    parser.add_argument(
        "--prompt", "-p",
        type=str,
        help="Prompt text. If omitted, reads from --prompt-file.",
    )
    parser.add_argument(
        "--prompt-file", "-f",
        type=str,
        default="final-prompt.md",
        help="Path to a file containing the prompt (default: final-prompt.md).",
    )
    parser.add_argument(
        "--output", "-o",
        type=str,
        default="context-image-generated.png",
        help="Output image path (default: context-image-generated.png).",
    )
    parser.add_argument(
        "--model", "-m",
        type=str,
        default="black-forest-labs/flux-schnell",
        help="Replicate model ID (default: black-forest-labs/flux-schnell).",
    )
    args = parser.parse_args()

    if not os.environ.get("REPLICATE_API_TOKEN"):
        print("Error: REPLICATE_API_TOKEN is not set in the environment.", file=sys.stderr)
        print("Set it with: export REPLICATE_API_TOKEN=\"your_token_here\"", file=sys.stderr)
        sys.exit(1)

    try:
        import replicate
    except ImportError:
        print("Error: the 'replicate' Python package is not installed.", file=sys.stderr)
        print("Install with: pip install -r requirements.txt", file=sys.stderr)
        sys.exit(1)

    prompt = get_prompt(args)
    preview = prompt[:200] + ("..." if len(prompt) > 200 else "")
    print(f"Prompt: {preview}")
    print(f"Model:  {args.model}")
    print(f"Output: {args.output}")
    print("")
    print("Generating...")

    try:
        output = replicate.run(args.model, input={"prompt": prompt})
    except Exception as e:
        print(f"Replicate API error: {e}", file=sys.stderr)
        sys.exit(1)

    save_output(output, args.output)
    print(f"Saved to {args.output}")


if __name__ == "__main__":
    main()
GEN_EOF

# ---------------------------------------------------------------------------
# requirements.txt
# ---------------------------------------------------------------------------
write_if_empty "$PROJECT/requirements.txt" << 'REQ_EOF'
replicate>=0.25.0
REQ_EOF

# ---------------------------------------------------------------------------
# prompts.md  (header only; the hook appends to this during the lesson)
# ---------------------------------------------------------------------------
write_if_empty "$PROJECT/prompts.md" << 'PROMPTS_EOF'
# Prompts

This file captures every prompt sent to Claude Code during this lesson. The UserPromptSubmit hook in .claude/settings.json appends prompts here automatically with timestamps. If the hook is not active for any reason, prompts can be added manually using the same `## timestamp` header format.

The purpose of preserving prompts is not productivity tracking. It is to make the shape of the session visible after the fact, so that the coaching agent can read prompts.md retrospectively and surface the through-line, the drift, and the missed move.
PROMPTS_EOF

# ---------------------------------------------------------------------------
# my-interpretation.md  (template; you fill this in before any agent reads)
# ---------------------------------------------------------------------------
write_if_empty "$PROJECT/my-interpretation.md" << 'INTERP_EOF'
# My Interpretation

This file holds your own reading of the vernacular-archive folder, written before any AI agent has looked at it. The point is to make your own position visible to yourself, so that later in the lesson you can see where the AI's reading agrees with yours, where it diverges, and what it noticed that you missed.

## What I see in the screenshots

## What I think is significant

## What I am uncertain about

## The position I am reading from
INTERP_EOF

# ---------------------------------------------------------------------------
# final-prompt.md  (master-prompt template; generate_context.py reads this
# by default, and you complete it across the later stages)
# ---------------------------------------------------------------------------
write_if_empty "$PROJECT/final-prompt.md" << 'FINAL_EOF'
# Master Prompt

This file consolidates everything the lesson's workflow surfaced into a portable directive that any future AI session can act on. The four parts together carry the position, the typological reading, the agent specifications, and the directive for what to do next.

## Part 1, The Position

[Carry forward from my-interpretation.md, specifically the fourth section about the position I am reading from. Name the standpoint the original reading was conducted from, including discipline, location, and relevant biographical context. The position is what makes the reading legible as a reading by someone, rather than a view from nowhere.]

## Part 2, The Typology

The two typologies below are not flattened into agreement. They carry forward as competing readings, so the future AI sees that the categorical question itself is contestable.

### The screenshot-analyzer's typology

[Paste the output of the screenshot-analyzer agent here, including the list of types it identified, the justification for each, and the agent specification for each.]

### The peer-screenshot's counter-typology

[Paste the output of the peer-screenshot agent here, including the alternative types it identified, the justifications, and the alternative agent specifications.]

## Part 3, Consolidated Agent Specifications

[List the agent specifications from both typologies, with their role, where-and-when, and what descriptions. These are the recipes for the agents the next stage of the workflow will implement.]

## Part 4, The Directive

[State what the next session should do with the typology and agent specifications. If you are taking this into an existing project repository, name it here and describe the modification the next session should make.]
FINAL_EOF

# ---------------------------------------------------------------------------
# folder readmes so the empty folders survive in version control
# ---------------------------------------------------------------------------
write_if_empty "$PROJECT/vernacular-archive/README.txt" << 'ARCHIVE_EOF'
Put your own screenshots in this folder. These are the images the lesson works on. The three agents read this folder by name, so keep the folder named vernacular-archive.
ARCHIVE_EOF

write_if_empty "$PROJECT/literature/README.txt" << 'LIT_EOF'
Put the course readings here as PDFs or text files. The coaching agent reads this folder when you ask it to bring scholarly literature into the conversation.
LIT_EOF

echo ""
echo "Done. Workspace built at: $PROJECT"
echo ""
echo "Next steps"
echo "  1. cd \"$PROJECT\""
echo "  2. pip3 install -r requirements.txt"
echo "  3. Set your Replicate token:  export REPLICATE_API_TOKEN=\"your_token_here\""
echo "  4. Put your screenshots in the vernacular-archive folder."
echo "  5. Launch Claude Code in this folder:  claude"
echo ""
