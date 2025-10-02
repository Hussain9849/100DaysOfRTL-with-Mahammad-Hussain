# FPGA FIFO: Synchronous & Asynchronous Designs

This repository demonstrates two fundamental FIFO (First-In-First-Out) memory architectures for FPGA systems:

- **Synchronous FIFO:**  
  Operates with a single clock, ideal for high-speed buffering when write and read share the same clock.

- **Asynchronous FIFO:**  
  Supports independent write and read clocks, enabling safe data transfer across different clock domains.

---

## Key Differences

| Feature                | Synchronous FIFO                        | Asynchronous FIFO                          |
|------------------------|-----------------------------------------|--------------------------------------------|
| **Clock Domains**      | Single                                  | Separate (write & read)                    |
| **Design Complexity**  | Simpler                                 | More complex (handles clock crossing)      |
| **Use Case**           | Same-clock data buffering               | Cross-clock data transfer                  |
| **Typical Application**| Internal module pipelines               | Interfacing peripherals, clock domain crossing |

---

## Test Cases & Waveforms

### Synchronous FIFO

- **Normal Operation:**
  - Consecutive writes and reads (with data loss):  
    ![With Data Loss](syn-fifo/consecu-write-read-with%20data%20loss.png)
  - Consecutive writes and reads (without data loss):  
    ![Without Data Loss](syn-fifo/consecu-write-read-without%20data%20loss.png)
  - Consecutive operations:  
    ![Consecutive](syn-fifo/sync_consecutive.png)
- **Full Condition:**  
  ![Full](syn-fifo/full.png)
- **Empty Condition:**  
  ![Empty](syn-fifo/empty.png)
- **Overflow:**  
  ![Overflow](syn-fifo/overflow.png)
- **Underflow:**  
  ![Underflow](syn-fifo/underflow.png)

---

### Asynchronous FIFO

- **Normal Operation:**
  - All operations:  
  - Consecutive operations (video):  
    [Async Consecutive Operations (mp4)](asyn_fifo/async_consecutive.mp4)
- **Full Condition:**  
  ![All Writes - Full=1](asyn_fifo/all%20writes-full=1.png)
- **Empty Condition:**  
  ![All Reads - Empty=1](asyn_fifo/all%20reads-empty=1.png)
- **Overflow:**  
  ![Overflow](asyn_fifo/overflow.png)
- **Underflow:**  
  ![Underflow](asyn_fifo/underflow.png)