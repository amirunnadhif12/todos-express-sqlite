# Gunakan node:20-alpine sebagai base image
FROM node:20-alpine

# Set working directory di dalam container
WORKDIR /app

# Salin package.json dan package-lock.json (jika ada)
COPY package*.json ./

# Instal dependensi
RUN npm install

# Ekspos port yang digunakan aplikasi (contoh: 3000)
EXPOSE 3000

# Perintah untuk menjalankan aplikasi
CMD ["node", "index.js"]

