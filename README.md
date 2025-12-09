# Cascaded Voltage Control of a Half-Bridge Converter

**Task Description**
<img width="761" height="370" alt="image" src="https://github.com/user-attachments/assets/e3bb613b-1856-49a3-86d7-451f857597a5" />

In this assignment, you will design, analyze, and simulate a cascaded control system for a half
bridge dc-dc converter. The converter consists of an input dc source, a pair of complementary 
switches (𝑆H and 𝑆L), an 𝐿𝐶 filter, and a resistive load. The goal is to regulate the output voltage 
(𝑼<sub>𝐨𝐮𝐭</sub>) under varying load and reference conditions.

A two-loop cascaded control structure is used:
- Inner current control loop (𝑮<sub>𝐜𝐜</sub>(𝒔)): regulates the inductor current 𝑖<sub>𝐿</sub> to follow the reference 𝑖<sub>L</sub><sup>ref</sup>.
- Outer voltage control loop (𝑮<sub>𝐜𝐯</sub>(𝒔)): generates the reference 𝑖<sub>L</sub><sup>ref</sup> to regulate the output voltage U<sub>out</sub>.

You are required to:
1. Design PI controllers for both the voltage and current loops based on dynamic specifications 
(e.g., controller bandwidth).
2. Implement and test the control structure using simulation.
3. Analyze system performance under:
    - Load variation (step change in 𝑅)
    - Reference change (step in 𝑈<sub>out</sub><sup>ref</sup>)
