FROM node:10-alpine

LABEL "com.github.actions.name"="To-Do List Action"
LABEL "com.github.actions.description"="Github Action to annotate PRs with actionable TODOs extracted from @TODO comments on code"
LABEL "com.github.actions.icon"="check-square"
LABEL "com.github.actions.color"="yellow"

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of your action's code
COPY . .

# Run `node /index.js`
ENTRYPOINT ["node", "/index.js"]
