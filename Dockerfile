FROM node:18-alpine
# RUN mkdir /app
WORKDIR /app
ENV PORT 3000
COPY ["package.json", "package-lock.json*", "./"]
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node", "app.js"]