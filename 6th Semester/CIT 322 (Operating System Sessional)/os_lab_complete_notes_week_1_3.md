# 📘 OS Lab: Complete Notes (Week 1–3)

---

# 🔰 Module 1: Interface & Environment

## 🧠 Week 1: Multi-OS Shell & Scripting

---

## 🔹 Linux Basics

### ✅ File Permissions (chmod)

| Symbol | Meaning | Value |
|-------|--------|------|
| r | Read | 4 |
| w | Write | 2 |
| x | Execute | 1 |

Example:
```bash
chmod 755 file.sh
```

Meaning:
- Owner → rwx (7)
- Group → r-x (5)
- Others → r-x (5)

---

### ✅ Piping (|)

```bash
ls | grep ".txt"
```

👉 Output of `ls` is passed to `grep`

---

### ✅ Bash Script Example

```bash
#!/bin/bash
echo "Enter your name:"
read name
echo "Hello $name"
```

Run:
```bash
chmod +x script.sh
./script.sh
```

---

## 🔹 Windows (PowerShell)

### ✅ Basic Commands

```powershell
Get-ChildItem
```

```powershell
Select-String "text" file.txt
```

---

### ✅ Environment Variables

```powershell
$env:MYVAR="Hello"
echo $env:MYVAR
```

---

## 🔥 Comparison Tasks

### 🔸 ls vs dir

| Feature | ls | dir |
|--------|----|-----|
| OS | Linux | Windows |
| Output | Compact | Detailed |
| Options | -l, -a | /p, /w |

---

### 🔸 grep vs Select-String

| Feature | grep | Select-String |
|--------|------|---------------|
| OS | Linux | Windows |
| Usage | Text search | Text search |
| Example | grep "hi" file.txt | Select-String "hi" file.txt |

---

# 🔰 Module 2: Process Management

---

# 🧠 Week 2: Process Control (Part I)

---

## 🔹 fork()

👉 Creates a new process

```c
#include <stdio.h>
#include <unistd.h>

int main() {
    fork();
    printf("Hello\n");
    return 0;
}
```

Output:
```
Hello
Hello
```

---

## 🔹 exec()

👉 Replaces current process

```c
execl("/bin/ls", "ls", NULL);
```

---

## 🔹 wait()

👉 Parent waits for child

```c
wait(NULL);
```

---

## 🔹 Zombie Process

👉 Child finished but parent didn’t collect status

Check:
```bash
ps aux | grep Z
```

---

## 🔹 Windows CreateProcess()

```cpp
#include <windows.h>

int main() {
    STARTUPINFO si = { sizeof(si) };
    PROCESS_INFORMATION pi;

    CreateProcess(
        NULL,
        "notepad.exe",
        NULL, NULL, FALSE,
        0, NULL, NULL,
        &si, &pi
    );
}
```

---

## 🔥 Observation Tools

- Linux → `top`, `ps`
- Windows → Task Manager

---

# 🧠 Week 3: Process Control (Part II)

---

## 🔹 Signals (Linux)

### ✅ SIGINT (Ctrl + C)
### ✅ SIGKILL (Cannot be ignored)

---

## 🔹 Signal Handling

```c
#include <stdio.h>
#include <signal.h>

void handler(int sig) {
    printf("Signal caught!\n");
}

int main() {
    signal(SIGINT, handler);
    while(1);
}
```

---

## 🔹 Windows Priority

```cpp
SetPriorityClass(GetCurrentProcess(), HIGH_PRIORITY_CLASS);
```

---

# 🔥 Mini Shell (Important)

## ✅ Simple Shell Code

```c
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <string.h>

int main() {
    char cmd[100];

    while (1) {
        printf("myshell> ");
        fgets(cmd, sizeof(cmd), stdin);

        cmd[strcspn(cmd, "\n")] = 0;

        if (fork() == 0) {
            execlp(cmd, cmd, NULL);
        } else {
            wait(NULL);
        }
    }
}
```

---

# 🎯 Exam Preparation

## 🔥 Must Practice

- fork(), exec(), wait()
- signal handling
- CreateProcess()
- chmod & piping
- grep vs Select-String

---

## 🎤 Viva Questions

1. What is fork()?
2. Difference between process and thread?
3. What is a zombie process?
4. What is signal?
5. exec() vs fork()
6. What is pipe?

---

# 🧠 Quick Revision Tricks

- fork → creates copy
- exec → replaces process
- wait → parent waits
- signal → interrupt

---

# ✅ End of Notes

