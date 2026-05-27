# Reading the Gap

A complete unit for the M.A. in Artificial Intelligence Innovation, College of Arts and Humanities, Eastern University.

This repository is the whole unit in one place. It teaches one idea, the gap between what you mean by your own images and what an AI makes of them, across three short lessons, a hands-on activity, and an assessment. Everything here is plain text and image files, so it opens on any device and needs no special software.

## Start here, in this order

Read the files in the order below. Each line says what the file is and who it is for.

1. **UNIT-SYLLABUS.md**, the whole unit on one page. The three lessons, the readings for each, the schedule and time, where the unit sits in a seven-week course, and how it is graded. Read this first, it is the map.
2. **The lecture video**, the unit's recorded lecture, Lesson 2, where the gap becomes visible across several tools. Link at the bottom of this file.
3. **VIDEO LECTURE 2 Slides-Reading-the-Gap.pdf**, the deck from the Lesson 2 lecture, the same slides shown in the video, and where the full reading list and bibliography also appear.
4. **ACTIVITY.md**, the nine-stage hands-on activity students work through, with the exact steps and commands. The stages are grouped into the three lessons, shown in the syllabus.
5. **ASSESSMENT.md**, what students submit and how it is graded. Holds the five-criterion rubric, the lesson checkpoints, the knowledge checks, and the grading structure.
6. **assessment-student-worksheet.txt**, the fill-in sheet a student uses while working, with the rubric shown up front and a submission checklist.
7. **assessment-grader-worksheet.txt**, the instructor's grading tool, the rubric as a grid with space to mark and note. Shown here so the grading is transparent.
8. **assessment-worked-example.txt**, one finished sample reflection, then that same reflection graded against the rubric, and the student's full unit grade composed from every part, so you can see exactly how a mark is reached.

Supporting files:

- **setup-prompt.md** and **setup.sh**, build the student workspace, see below.
- **prompts.md**, the prompt record. This is the running log of every prompt sent to the AI during the activity, saved by the agent in order as the student works. It matters because it is the evidence the assessment reads, a gap a student claims has to point to a real prompt in this file. The copy here is a sample, the kind of record the activity produces.

## To run the activity yourself

The activity runs in a small workspace built by the setup script. Open a terminal in this folder and run:

```
bash setup.sh
```

`setup-prompt.md` explains what the script sets up. To do the full activity you also need an agent tool, Claude Code or Cursor, and your own API key for it. No key is stored in this repository, you bring your own. So the script builds and shows you the workspace on any machine, and running the AI stages needs your tool and key in place.

## The lecture video

Lesson 2, the recorded lecture: https://www.youtube.com/watch?v=D02clYzQKIw

## A note for reviewers

This is one unit of roughly six or seven in a three-credit, seven-week LifeFlex course, built out in full to show asynchronous teaching across a complete unit. The grader worksheet and the worked example would live in an instructor space in the live program, they are included here so the full assessment design is visible in one place.
