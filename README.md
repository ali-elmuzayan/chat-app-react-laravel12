# Laravel React Chat App

A modern, real-time chat application built with Laravel, Inertia.js, and React. This application aims to replicate core features of popular messaging platforms like WhatsApp, providing a seamless and responsive user experience.

## 🚀 Tech Stack

- **Backend:** Laravel 12 
- **Frontend:** React 19+
- **Glue:** Inertia.js
- **Real-time:** Laravel Reverb / Pusher
- **Styling:** Tailwind CSS
- **Database:** MySQL / PostgreSQL

## ✨ Features

- **User Authentication:** Secure login and registration.
- **Real-time Messaging:** Instant message delivery using WebSockets.
- **One-on-One Chats:** Private conversations between users.
- **Group Chats:** Create and manage group conversations.
- **Media Sharing:** Send images and file attachments.
- **Read Receipts:** See when messages are delivered and read.
- **User Presence:** Online/Offline status indicators.
- **Responsive Design:** Optimized for both desktop and mobile devices.

## 🛠️ Installation & Setup

1.  **Clone the repository**
    ```bash
    git clone <repository-url>
    cd chat-app-react-laravel12
    ```

2.  **Install Backend Dependencies**
    ```bash
    composer install
    ```

3.  **Install Frontend Dependencies**
    ```bash
    npm install
    ```

4.  **Environment Configuration**
    Copy the example environment file and configure your database and Reverb/Pusher credentials.
    ```bash
    cp .env.example .env
    php artisan key:generate
    ```

5.  **Database Setup**
    Create your database and run migrations.
    ```bash
    php artisan migrate
    ```

6.  **Run the Application**
    Start the Laravel development server and the Vite development server.
    ```bash
    # Terminal 1
    php artisan serve

    # Terminal 2
    npm run dev

    # Terminal 3 (for Queue/Reverb if needed)
    php artisan reverb:start
    ```

## 📝 Todo List

- [ ] Project Setup (Laravel + Inertia + React)
- [ ] Authentication (Laravel Breeze/Jetstream)
- [ ] Database Schema Design (Users, Messages, Conversations)
- [ ] Real-time Configuration (Reverb)
- [ ] Chat UI Implementation
- [ ] Message Sending Logic
- [ ] File Uploads
- [ ] Group Chat Features

