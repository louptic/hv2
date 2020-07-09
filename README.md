# Homebrew-Optic

This repository contains the Formulae for Optic

The `master` branch is a fork of the `homebrew/homebrew-core` branch, and is also where all formulae are held.

The `github-actions` branch contains the workflows that automated release, as well as all formulae.

## Why two branches?

In order to automate the workflow, we need GitHub actions files. However, these workflows will interfere in the PR if we try to merge our formulae into `homebrew-core`. But, in order for workflows to run, they need to be hosted on the default branch (which has been set to be `github-actions`. This interfers with homebrew, which pulls formula from the default branch. So when you run `brew install username/name/formula`, you'll be downloading the formula from the `github-actions` branch, but when we merge our changes into `homebrew-core`, we'll be merging from `master`)


