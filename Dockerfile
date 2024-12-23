# Use an official PHP image
FROM php:8.1-cli

# Set the working directory
WORKDIR /app

# Copy your bot files to the container
COPY . .

# Install dependencies if required (e.g., curl)
RUN apt-get update && apt-get install -y curl

# Expose port 80
EXPOSE 80

# Command to run the bot
CMD ["php", "-S", "0.0.0.0:80", "bot.php"]
