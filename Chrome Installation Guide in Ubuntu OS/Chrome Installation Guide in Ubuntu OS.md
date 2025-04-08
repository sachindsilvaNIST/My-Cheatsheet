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

