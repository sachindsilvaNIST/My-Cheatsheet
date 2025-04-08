# Installing Google Chrome on Ubuntu (.deb Package)

This guide walks you through installing the Google Chrome browser from a `.deb` file downloaded from the official website.

---

## 📦 Prerequisites

- Ubuntu OS (any modern version)
- Internet connection (for dependencies if needed)
- `.deb` package downloaded (e.g., `google-chrome-stable_current_amd64.deb`)

---

## ✅ Installation Methods

### Method 1: Using `dpkg` (Terminal)

1. Open Terminal.
2. Navigate to the directory where the `.deb` file is located:
   ```bash
   cd ~/Downloads
    ```
3. Run the following command to install:

```bash
sudo dpkg -i google-chrome-stable_current_amd64.deb
```

4. If you encounter dependency errors, fix them using:
```bash
sudo apt-get install -f
```

### Method 2: Using `apt` (Recommended)

This method automatically resolves dependencies.

```bash
sudo apt install ./google-chrome-stable_current_amd64.deb
```
> Note: Use ./ to indicate it's a local file.

### 🧹 Uninstalling Chrome
```bash
sudo apt remove google-chrome-stable
```

# 🧩 Google Chrome Not Updating on Ubuntu After Installing `.deb` File

If you've installed Google Chrome via the `.deb` package on Ubuntu but it's not updating automatically, here’s a guide to help you figure out why and how to fix it.

---



## 🔍 Why Chrome Might Not Be Updating Automatically

1. **Missing Google Repository**  
   The `.deb` installer normally adds the Google APT repository to your system. If this step failed, Chrome won’t get updates via `apt`.

2. **Repository Errors or Disabled Source**  
   The Google repo might have been disabled due to download errors, expired GPG keys, or other policy issues.

3. **Update Not Run Manually**  
   Even with the repo set up, Chrome won't update unless you run:
   ```bash
   sudo apt update && sudo apt upgrade

   
## ✅ How to Check and Fix It

1. Check If Google’s Repo is Added

Run:
```bash
cat /etc/apt/sources.list.d/google-chrome.list
```

Expected output:
```bash
deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main
```

If it’s missing, add it manually:

```bash
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/google-linux-signing-key.gpg

echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/google-linux-signing-key.gpg] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
```

Then update your package list:
```bash
sudo apt update
```

2. Upgrade Chrome Manually
```bash
sudo apt upgrade google-chrome-stable
```

> _If it says it's already the newest version, but you believe it's outdated, the repo may be broken or cached._


3. Check Chrome Version
Check your installed version:
```bash
google-chrome --version
```


4. Enable Auto-Updates with unattended-upgrades (Optional)
If you want Chrome to update automatically in the background:

Install the package:

```bash
sudo apt install unattended-upgrades
sudo dpkg-reconfigure --priority=low unattended-upgrades
```

Add Google as an allowed origin:

```bash
sudo nano /etc/apt/apt.conf.d/50unattended-upgrades
```
Add or uncomment this line under the "Allowed-Origins" section:
```bash
"origin=Google LLC";
```
```Save and exit (Ctrl+O, Enter, then Ctrl+X).```










