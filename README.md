# Git HTTP to SSH
Too lazy to change git remote origin to ssh? Try this

## Usage:
### Arch linux
1. Install using `paru -S githttptossh` (replace paru with your aur helper)
2. Go into your repository `cd .../repository`
3. Do `githttptossh`

### Other distros
1. Clone this repo `git clone https://github.com/Mikicrepstudios/GitHTTPToSSH`
2. Go into it `cd GitHTTPToSSH`
3. Give yourself execute permissions `chmod +x githttptossh.sh`
4. Go into your repository `cd .../repository`
5. Copy script from my repository to your `cp .../GitHTTPToSSH/githttptossh.sh .`
6. Execute script `./githttptossh.sh`
7. You should see success message `Origin changed to SSH: {origin}`
8. Remove script `rm githttptossh.sh`
9. Enjoy HTTPless expirience




#### Script was used for this repo too btw
