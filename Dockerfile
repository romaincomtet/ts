FROM whanos-javascript

RUN npm install -g typescript@4.4.3

RUN tsc ./app/app.ts

RUN find . -name "*.ts" -type f -not -path "./node_modules/*" -delete
