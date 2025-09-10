# Gunakan base image Node.js versi 18, yang ringan (alpine = minimalis)
FROM node:18-alpine  

# Tentukan working directory di dalam container
WORKDIR /app  

# Copy file package.json dan package-lock.json dulu
COPY package*.json ./  

# Install dependencies
RUN npm install  

# Copy semua file project ke dalam container
COPY . .  

# Jalankan aplikasi (di sini app nya sum.js)
CMD ["node", "sum.js"]
