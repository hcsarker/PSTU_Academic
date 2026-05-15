# Simulation Model Verification

## Questions

1. Define verification, validation, and credibility in simulation model. Illustrate the timing
relationship of validation, verification, and establishing credibility. (05) [2020-21 Final]
2. Describe the eight methods for debugging a simulation model’s computer program. (04) [2020-21
Final]
3. Describe the iterative process of verification and validation of simulation models. (02) [2017-18
Final]
4. Define verification, validation, and credibility in simulation model. Mention the issues in an
accreditation decision. Show the timing relationship of validation, verification, and establishing
credibility. Derive the mathematical formulation… (06) [2019-20 Final]
5. Explain the inspection approach of statistical procedure for comparing real-world observation and
simulation output data. (03) [2019-20 Final]

# ✅ 1. Verification, Validation, and Credibility (Definition)

### 🔹 Verification (যাচাই)

**English:**  
Verification ensures that the **simulation model is correctly implemented** according to the conceptual model.  
👉 “Are we building the model right?”

**Bangla:**  
Verification মানে হচ্ছে কোড/মডেল ঠিকভাবে বানানো হয়েছে কিনা তা পরীক্ষা করা।  
👉 “আমরা কি মডেলটা ঠিকভাবে তৈরি করেছি?”

---

### 🔹 Validation (প্রমাণীকরণ)

**English:**  
Validation checks whether the **model represents the real-world system accurately**.  
👉 “Are we building the right model?”

**Bangla:**  
Validation মানে মডেলটি বাস্তব সিস্টেমকে সঠিকভাবে উপস্থাপন করছে কিনা তা যাচাই করা।  
👉 “আমরা কি সঠিক মডেল তৈরি করেছি?”

---

### 🔹 Credibility (বিশ্বাসযোগ্যতা)

**English:**  
Credibility is the **confidence users have** in the model and its results.

**Bangla:**  
Credibility মানে ব্যবহারকারীর কাছে মডেলের গ্রহণযোগ্যতা ও বিশ্বাসযোগ্যতা।

---

# ⏱️ Timing Relationship (Important Diagram Explanation)

### Flow

```
Problem → Conceptual Model → Computer Model → Experimentation → Decision
            ↑ Verification        ↑ Validation
                           → Credibility (throughout)
```

![alt text](image.png)

### Explanation

- **Verification:** Happens during coding phase  
- **Validation:** Happens after model produces results  
- **Credibility:** Built throughout the entire process  

**Bangla:**

- Verification → প্রোগ্রাম বানানোর সময়  
- Validation → ফলাফল পাওয়ার পর  
- Credibility → পুরো প্রক্রিয়া জুড়ে তৈরি হয়  

---

# ✅ 2. Eight Methods for Debugging Simulation Program

### 🔧 Methods

1. **Desk Checking**  
   → Manually checking code line by line  
   → হাতে বসে কোড চেক করা  

2. **Trace Method**  
   → Print intermediate values  
   → ভেতরের ভ্যালু দেখানো  

3. **Use of Debugger Software**  
   → Breakpoints, step execution  

4. **Simplified Model Testing**  
   → Small version test করা  

5. **Extreme Condition Testing**  
   → Very large/small input দিয়ে test  

6. **Consistency Checking**  
   → Same input → same output কিনা  

7. **Animation/Visualization**  
   → Graphically model behavior দেখা  

8. **Comparison with Known Results**  
   → Analytical result এর সাথে compare  

---


# ✅ 3. Iterative Process of Verification & Validation

### 🔄 Process

```
Build Model → Verify → Validate → Modify → Repeat
```

### Process Description

- First, a model is developed
- Then it is verified to check correctness
- After that, validation is done using real-world data
- If errors or mismatches are found, the model is modified
- This cycle continues until satisfactory results are obtained
- Conclusion:
This iterative loop ensures continuous improvement of the model.

### Explanation

- First model তৈরি করা হয়  
- তারপর verification  
- তারপর validation  
- ভুল থাকলে আবার modify করা হয়  
- এই process বারবার repeat হয়  

**Bangla:**  
এটা একটি loop process - যতক্ষণ না model ঠিক হয়, ততক্ষণ verify + validate করা হয়।

---

# ✅ 4. Issues in Accreditation Decision

When deciding whether a model is acceptable:

### Key Issues

1. **Model Accuracy (সঠিকতা)**  
2. **Data Quality (ডাটার মান)**  
3. **Assumptions (ধারণা ঠিক কিনা)**  
4. **User Confidence (ব্যবহারকারীর বিশ্বাস)**  
5. **Cost vs Benefit (খরচ বনাম লাভ)**  
6. **Documentation (ডকুমেন্টেশন আছে কিনা)**  

---

## Mathematical Formulation of Validation vs. Output Analysis

The error in a simulation estimate $\hat{m}_M$ of a system mean $\mu_S$ can be expressed as:
  $$\text{Error in } \hat{m}_M = |\hat{m}_M - \mu_S|$$ Using the triangle inequality:$$|\hat{m}_M - \mu_S| = |(\hat{m}_M - \mu_M) + (\mu_M - \mu_S)| \leq |\hat{m}_M - \mu_M| + |\mu_M - \mu_S|$$Output Analysis is concerned with making the first term ($|\hat{m}_M - \mu_M|$) small (statistical precision).  Validation is concerned with making the second term ($|\mu_M - \mu_S|$) small (model accuracy).  

# ✅ 5. Inspection Approach (Statistical Comparison)

### 🔍 Idea

The inspection approach is used to compare **simulation output with real system data**.

### Description

- First, real-world data is collected  
- Then simulation is run to generate output  
- Both results are compared using statistical methods  

### Techniques

1. **Graphical comparison** (histogram, plots)  
2. **Numerical measures** (mean, variance)  
3. **Hypothesis testing** (to check significance of difference)

### Conclusion

If simulation output closely matches real data, the model is considered valid.

### Example

- Real system avg waiting time = 10 min  
- Simulation output = 9.8 min  
👉 Very close → Model valid

---
