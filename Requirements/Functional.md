
# Functional Requirements

**Define what a system should do, detailing specific behaviors or functions, like user interactions or data processing.**

### Automated Grading:
   - **Multiple-Choice Questions:** Automatically grade based on pre-defined correct answers.
   - **Short-Answer Questions:** Use AI to grade responses, with capability to handle language differences.

### Manual Grading Fallback:
   - Escalate ambiguous or uncertain answers to human graders for review.

### Exam Management:
   - Manage candidate records, exam scheduling, and results tracking.
   - Handle two-stage exam process (First and Second Exam).

### Cheating Prevention:
   - Implement plagiarism checks and anomaly detection for unusual answer patterns.
   - Check with already submitted work internal & external.
   - Flag images that are similar for manual checking.
   - Check for a software solution that already exists.

### Audit and Review:
   - Provide tools for administrators to review AI decisions and grading outcomes for transparency.
   - Store historical data for auditing purposes.
   - Manual review of random samples.

### Dispute Resolution:
   - Allow candidates to challenge grading decisions with a system to review disputes.

### Feedback Mechanism:
   - Generate detailed, constructive feedback for each candidate's performance.

### Update Management:
   - Enable easy updates to exam questions and grading algorithms.

### Optimization:
   - Implement caching mechanisms to avoid re-processing similar questions or answers.
   - Very good for short questions because of repeating answers.
   - Might not be able to do with Test 2 because of variation.

### Integration:
   - Seamlessly integrate with existing systems for user authentication, management, etc.

### Test Modify:
   - Use AI to improve the questions.