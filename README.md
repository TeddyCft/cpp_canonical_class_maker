# cpp_canonical_class_maker

A small developer tool to generate C++ canonical class files quickly.

---

## Overview

cpp_canonical_class_maker is a simple command-line tool that generates the standard C++ “canonical form” class structure.

It was created out of a personal need to avoid repeatedly writing the same boilerplate code when setting up new C++ classes.

The goal is to speed up workflow and reduce repetitive manual work when starting new projects.

---

## ⚙️ What it does

Given a class name, the tool generates:

- Header file (.hpp)
- Source file (.cpp)
- Canonical form methods:
  - Constructor
  - Destructor
  - Copy constructor
  - Copy assignment operator

---

## Motivation

When working on multiple C++ projects, writing the same boilerplate repeatedly becomes inefficient and error-prone.

This tool was built to:
- reduce repetitive typing
- enforce consistent structure
- speed up project initialization
- improve focus on actual logic instead of setup

---

## What I learned

- C++ file generation and templating
- Automation of development workflows
- Importance of developer experience (DX)
- Structuring reusable tooling

---

## Tech stack

- Shell

---

## 🚀 Usage

```bash
cpp_canonical_class_maker
ClassName
