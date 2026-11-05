import requests

usernames = ['Saadjunaid0317', 'Shhyder786', 'torvalds']

for username in usernames:
    url = f'https://api.github.com/users/{username}'
    r = requests.get(url)

    if r.status_code == 200:
        data = r.json()
        print(data['login'], data['public_repos'])
    else:
        print(f'Error for {username}: status code {r.status_code}')
