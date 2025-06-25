#!/bin/bash
cd /home/kavia/workspace/code-generation/malaiarasu-g-portfolioslide-70202-2ee8234e/portfolio_slideshow_frontend_workspace/portfolio_slideshow_frontend
npx run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
  exit 1
fi

