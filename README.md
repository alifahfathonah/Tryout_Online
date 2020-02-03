# Tryout Online

### Description
Aplikasi ini merupakan aplikasi ujian online yang memiliki dua akun guru berwenang untuk manajemen soal dan siswa berwenang untuk mengerjakan dan melihat nilai hasil jawaban


# Feature List
- Built with CodeIgniter 3.1.10
- HMVC architecture
- User registration
- User Login
- Login with email or username
- Password reset
- Avatar and logo upload
- E-Mail verification for new users
- Manage Users
- Invite new user for registration
- Restrict Public User Registration
- Manage User Types
- Manage permissions
- Assign permission to User Type
- Built using AdminLTE
- Bootstrap Responsive Theme
- Email Templates for Forgot Password, Invite users
- SMTP Email Setting
- Site Logo, Title, Favicon Change settings

# Installation
- Extract Source Code di htdocs
- Import db_cias2.sql ke database
- Konfigurasi file database.php 

# Default Login
- Guru  = guru1@to.com	password = 1234
- Siswa = siswa@to.com	password = 1234 

# ISSUES
- Controller is not found --> enable mod_rewrite.dll (or mod_rewrite.so) by removing # in httpd.conf.
- Undefined function password_verify() --> change to hash function such as md5('string'), sha1('string')
# Tryout_Online
