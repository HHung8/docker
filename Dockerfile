FROM node:16-alpine
RUN apk add --no-cache python3 g++ make
WORKDIR /app
# Sao chép tất cả các tệp từ thư mục hiện tại vào thư mục /app trong container
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]