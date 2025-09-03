FROM ghcr.io/cirruslabs/flutter:stable AS build

WORKDIR /app

# Copy everything
COPY . .

# Enable web
RUN flutter config --enable-web

# Get dependencies
RUN flutter pub get

# Build web release
RUN flutter build web --release

# ---- Nginx Stage ----
FROM nginx:alpine

# Copy built files from flutter to nginx
#COPY --from=build /app/build/web /usr/share/nginx/html
COPY build/web /usr/share/nginx/html

# Copy custom nginx config if needed
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]