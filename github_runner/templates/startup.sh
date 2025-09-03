#!/usr/bin/env sh

export HOME={{ github_runner_home }}
exec {{ github_runner_binary_file }} run
