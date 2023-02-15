FROM node
COPY . .
RUN npm install
VOLUME ["newman"]
CMD ["npm","run","test:report"]