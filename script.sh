#!/bin/bash
cd src/
npx create-next-app . --use-npm --ts
mv ../prisma .
mv ../.env .
npx prisma migrate dev
npx prisma generate
rm -rf public styles pages/*.tsx pages/api/hello.ts
npm run dev