#!/bin/bash
cd /home/kavia/workspace/code-generation/portfolio-website-showcase-22543-22552/presentation_frontend
npm run lint
ESLINT_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ]; then
  exit 1
fi

