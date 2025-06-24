# 📱 Ruby on Rails Sample App

A full-featured Ruby on Rails application inspired by Twitter, built as part of [Michael Hartl's Ruby on Rails Tutorial](https://www.railstutorial.org/). This project includes user authentication, microposts, following/follower relationships, pagination, and responsive design with Bootstrap.

## 🚀 Features

- User registration and authentication (with secure password handling)
- Persistent sessions (log in/log out)
- Account activation and password reset
- User profiles with Gravatar integration
- Micropost creation, editing, and deletion
- User feed with posts from followed users
- Follow/unfollow functionality
- Pagination with Bootstrap styling

## 🔧 Built With

- **Ruby** 3.2.x
- **Rails** 8.0.x
- **PostgreSQL**
- **Bootstrap** (for UI styling)
- **Hotwire (Turbo + Stimulus)**
- **Importmap**
- **BCrypt** (for secure password handling)
- **WillPaginate** (with Bootstrap renderer)
- **Faker** (for sample seed data)

## 📁 Project Structure Highlights

- app/models – ActiveRecord models (User, Micropost, Relationship)
- app/controllers – Application logic for users, sessions, microposts
- app/views – HTML templates using ERB
- db/migrate – Database migrations
- test/ – Unit and integration tests

## ✅ TODO / Improvements

- Add image upload with Active Storage
- Add notifications or likes to microposts
- Enable real-time updates with ActionCable
