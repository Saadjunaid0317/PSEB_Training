# PSEB_Training

Assignments and practice from the PSEB training.

## Session 2 Assignment

### 1. API (`github_users.py`)

- Use the GitHub API for 3 usernames.
- Print each `login` and `public_repos`.
- Check that `status_code` is 200 before reading the data.

### 2. SQL (`library.sql`)

- Create a database `library` and a table `books` (id, title, author, year, price).
- Insert 8 books.
- Write queries to show books with price above 500, all books sorted by price (highest first), and how many books there are.
- Update the price of one book using `WHERE`.

### 3. pytest (`adult.py`, `test_adult.py`)

- `is_adult(age)` returns `True` for 18 or more.
- It raises `ValueError` for a negative age.
- 3 tests cover age 17, age 18 and age -1.

## How to run

Install the requirements (Python 3):

```
pip install requests pytest
```

Run the API script:

```
python github_users.py
```

Run the SQL file (PostgreSQL):

```
psql -U postgres -v ON_ERROR_STOP=1 -f library.sql
```

Run the tests:

```
python -m pytest -v
```
