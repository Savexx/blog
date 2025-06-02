# Blog App

A Ruby on Rails application for managing and publishing blog posts.

---

## 📚 Table of Contents

- [Versions](#versions)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Testing](#testing)

## ⚙️ Versions

- **Ruby:** 3.2.2
- **Rails:** 7.1.0
- **PostgreSQL:** 14+
- **Node.js:** 18+
- **Yarn:** 1.22+

> ✅ Make sure you are using compatible versions by checking `.ruby-version`,
> `Gemfile`, and `package.json`.

---

## 🚀 Getting Started

Assuming all system requirements are already installed, follow these steps:

### 1. Clone the repository

```bash
git clone https://github.com/Savexx/blog.git
cd blog
```

### 2. Install Dependencies

```bash
bundle install
```

### 3. Set up the database

```bash
rails db:create
rails db:migrate
rails db:seed
```

### 4. Add the ENV File

> Add ENV file The env file is sent through email.

## 💻 Usage

### 1. To run development server, run:

```bash
rails s
```

### 2. Sign up

> Use an email address that you can receive emails.

### 3. Creating a post

> Sign-in to your acccount. Create your first post.

### 4. Creating a feedback

```bash
Sign-in with the dummy account:
email: user@test.com
password: password
```

### 4. Email Notifcation

> You will receive an email notification to your email address.

## 🧪 Testing

To run tests:

```bash
bundle exec rspec
```
