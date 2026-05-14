# OS Lab Solutions (C++)

## 1. Race Condition (Duplicate Student ID)

```cpp
#include <iostream>
#include <thread>
using namespace std;

int next_id = 1;

void generateID() {
    int id = next_id;
    next_id++;
    cout << "Generated ID: " << id << endl;
}

int main() {
    thread t1(generateID);
    thread t2(generateID);

    t1.join();
    t2.join();
}
```

---

## 2. Peterson’s Algorithm

```cpp
#include <iostream>
#include <thread>
using namespace std;

bool flag[2] = {false, false};
int turn;

void process(int i) {
    int j = 1 - i;
    flag[i] = true;
    turn = j;

    while (flag[j] && turn == j);

    cout << "Process " << i << " in critical section\n";

    flag[i] = false;
}

int main() {
    thread t1(process, 0);
    thread t2(process, 1);

    t1.join();
    t2.join();
}
```

---

## 3. Mutex (File Writing)

```cpp
#include <iostream>
#include <thread>
#include <mutex>
using namespace std;

mutex mtx;

void writeLog(int id) {
    mtx.lock();
    cout << "Thread " << id << " writing log\n";
    mtx.unlock();
}

int main() {
    thread t1(writeLog, 1);
    thread t2(writeLog, 2);

    t1.join();
    t2.join();
}
```

---

## 4. Test-and-Set Lock

```cpp
#include <iostream>
#include <thread>
#include <atomic>
using namespace std;

atomic_flag lock = ATOMIC_FLAG_INIT;
int balance = 1000;

void withdraw(int amount) {
    while (lock.test_and_set());

    if (balance >= amount) {
        balance -= amount;
        cout << "Withdraw: " << amount << endl;
    }

    lock.clear();
}

int main() {
    thread t1(withdraw, 200);
    thread t2(withdraw, 300);

    t1.join();
    t2.join();

    cout << "Final Balance: " << balance;
}
```

---

## 5. Compare and Swap (CAS)

```cpp
#include <iostream>
#include <thread>
#include <atomic>
using namespace std;

atomic<int> counter(0);

void update() {
    int expected;
    do {
        expected = counter.load();
    } while (!counter.compare_exchange_weak(expected, expected + 1));
}

int main() {
    thread t1(update);
    thread t2(update);

    t1.join();
    t2.join();

    cout << "Counter: " << counter;
}
```

---

## 6. Semaphore (Printer)

```cpp
#include <iostream>
#include <thread>
#include <semaphore>
using namespace std;

counting_semaphore<1> sem(1);

void printDoc(int id) {
    sem.acquire();
    cout << "Student " << id << " printing...\n";
    sem.release();
}

int main() {
    thread t1(printDoc, 1);
    thread t2(printDoc, 2);

    t1.join();
    t2.join();
}
```

---

## 7. Producer-Consumer

```cpp
#include <iostream>
#include <thread>
#include <semaphore>
#include <queue>
using namespace std;

queue<int> buffer;
const int MAX = 5;

counting_semaphore<5> empty(MAX);
counting_semaphore<5> full(0);
mutex mtx;

void producer() {
    for (int i = 1; i <= 10; i++) {
        empty.acquire();

        mtx.lock();
        buffer.push(i);
        cout << "Produced: " << i << endl;
        mtx.unlock();

        full.release();
    }
}

void consumer() {
    for (int i = 1; i <= 10; i++) {
        full.acquire();

        mtx.lock();
        int item = buffer.front();
        buffer.pop();
        cout << "Consumed: " << item << endl;
        mtx.unlock();

        empty.release();
    }
}

int main() {
    thread t1(producer);
    thread t2(consumer);

    t1.join();
    t2.join();
}
```

---

## Summary

| Problem | Technique |
|--------|----------|
| Duplicate ID | Race Condition |
| Turn-taking | Peterson |
| File write | Mutex |
| ATM | Test-and-Set |
| Counter | CAS |
| Printer | Semaphore |
| Producer-Consumer | Semaphore |
