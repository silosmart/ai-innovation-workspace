# The prompt that built setup.sh

This is the prompt you can give Claude Code to generate the setup script you downloaded. Read it to see how the workspace was made, and change it if you want a different structure for your own archive. This is the generating prompt for the portable student version of the workspace. It is not a recording of every keystroke the instructor used while building the original.

---

Write a single bash script called setup.sh that builds a self-contained workspace for a Claude Code lesson, and that changes nothing outside the folder it creates.

The script takes one optional argument, the workspace name, and defaults to AI-Innovation-Workspace when none is given. It is safe to re-run, so a file that already has content is kept rather than overwritten.

Inside the workspace, create this structure.

A hidden folder called .claude, holding an agents folder and a hooks folder.

In .claude/agents, write three subagent files, each defined by a short YAML header naming the agent and listing its tools, followed by instructions.

The first agent is coaching, with tools Read, Grep, and Glob. It has three functions. One, coach a prompt while it is being composed by naming the implicit assumption, naming what the prompt leaves out, offering one decomposition move without rewriting the prompt, and asking one open reflective question tied to the student's own prior reading in my-interpretation.md. Two, read the saved prompt file after the session and surface the through-line, the drift toward asking the model to confirm rather than interpret, the most useful prompt the student did not ask, and one closing question. Three, read a literature folder and surface a few passages that connect to what the other agents produced, as handles into the scholarly conversation rather than as verdicts. The agent never writes prompts for the student and never summarizes other agents.

The second agent is screenshot-analyzer, with tools Read and Glob. It reads across a folder called vernacular-archive as a whole, identifies the foundational types of screenshots present without interpreting any single one, writes a hermeneutic justification for each type, and writes an agent specification for each type with three parts, the role, the where-and-when, and the what. It closes by summarizing the typology and naming what resisted assignment.

The third agent is peer-screenshot, with tools Read and Glob. It reads the same vernacular-archive folder, forms its own sense before reading the screenshot-analyzer's output, then produces a counter-typology from a different categorical position, with justifications and agent specifications in the same form. It closes by naming where it agrees with the screenshot-analyzer, where it differs, and where the difference would lead to genuinely different readings.

In .claude/hooks, write a Python file called capture_prompt.py. It is a UserPromptSubmit hook handler. It reads the prompt event as JSON from standard input, finds the project root from the CLAUDE_PROJECT_DIR environment variable and falls back to walking up from its own location when that variable is absent, and appends the prompt text to prompts.md in the project root under a timestamped header. All failures are silenced so the hook never blocks a prompt.

In .claude, write settings.json that registers capture_prompt.py as the UserPromptSubmit command hook, invoking it with python3 and the project-dir variable so it works on any machine.

In the workspace root, write generate_context.py, a script that generates an image from a text prompt using Replicate's Flux model. It reads its prompt from final-prompt.md by default, accepts an inline prompt, an alternate prompt file, an output path, and a model id as arguments, checks for the Replicate token and the replicate package before running, and saves the returned image whether the library hands back a file object or a URL.

Also in the root, write requirements.txt listing the Replicate Python package, write prompts.md with a short header explaining that prompts are captured here to make the shape of the session visible afterward, write my-interpretation.md as a template with four empty sections, what I see in the screenshots, what I think is significant, what I am uncertain about, and the position I am reading from, and write final-prompt.md as a four-part master-prompt template, the position, the two competing typologies, the consolidated agent specifications, and the directive for the next session.

Create an empty vernacular-archive folder for the student's own screenshots and an empty literature folder for the course readings, each with a one-line readme so the folders survive in version control. Keep the archive folder named vernacular-archive, because the three agents read it by that name.

End the script by printing what was created and the next steps, install the requirements, set the Replicate token, add screenshots to the vernacular-archive folder, and launch Claude Code in the workspace.
