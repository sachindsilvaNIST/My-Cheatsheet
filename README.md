# Cheatsheet to push / pull repository to / from the GitHub

### 1. Change the directory
```sh
cd <Your directory where you want to create your local repository>
```


### 2. Initialize a Git Repository
```sh
git init
```

### 3. Configure Git (Only for first-time)
```sh
git config --global user.name <Your Name>
```

```sh
git config --global user.email <Your Email>
```

### 4. Add a Remote Repository (Linking your Local Repo to GitHub Repo)
```sh
git remote add origin https://github.com/your-username/your-repo.git
```

### 5. Check the Repository Status
```sh
git status
```
This displays the status of your working directory and staged changes.

### 6. Add Files / Folders to the Staging Area
```sh
git add .
```
This will add all the files / folders to the staging area.

### 7. Commit changes 
```sh
git commit -m "<<Commit Message>>"
```
Save the changes to the local repository with a message.

### 8. Pushing changes to Github Repository
Since you have already linked your local repository to your GitHub Repository, you can push your commits directly to the GitHub.
- Run the following commands.
```sh
git branch -M main
```
Renaming the default branch `master` to `main`

### 9. Push changes to GitHub
```sh
git push -u origin main
```








