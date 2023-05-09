
Introduction:
I-spin live is a Matlab app interfacing with a multichannel EMG recording system (i.e., EMG-Quattrocento, 400 channel EMG amplifier; OT Bioelettronica, Italy) to identify the discharge activity of single motor units in real-time and translate it into several forms of visual feedback. Users can implement this tool during experiments requiring the control of the discharge activity of individual motor units or populations of motor units in real-time.
Note that the app currently only interfaces with one EMG recording system. However, we provide the entire set of functions and codes with comments to facilitate its implementation with other devices.
We provide a step-by-step protocol (User_manual.pdf) to facilitate the implementation of I-Spin live in any experimental settings. You can also read our preprint that describes the method, the main steps of the experiments, and the capability boundaries of the app (https://www.biorxiv.org/content/10.1101/2023.04.14.536933v1). 

Abstract of the preprint:
Decoding the activity of individual neural cells during natural behaviours allows neuroscientists to study how the nervous system generates and controls movements. Contrary to other neural cells, the activity of spinal motor neurons can be determined non-invasively (or minimally invasively) from the decomposition of electromyographic (EMG) signals into motor unit discharge activities. For some interfacing and neuro-feedback investigations, EMG decomposition needs to be performed in real-time. Here, we introduce an open-source software that performs real-time decoding of spinal motor neurons using a blind-source separation approach for multichannel EMG signal processing. Separation vectors (motor unit filters) are identified for each motor unit from a baseline contraction and then re-applied in real-time during test contractions. In this way, the discharge activity of multiple motor units can be provided as visual feedback in real-time. We provide a complete framework with guidelines and examples of recordings to guide researchers who aim to study movement control at the motor neuron level. We tested the software on data collected using either grids of surface electrodes or intramuscular electrode arrays from five lower limb muscles (gastrocnemius lateralis and medialis, vastus lateralis and medialis, and tibialis anterior). We assessed how the muscle, or variation of contraction intensity between the baseline contraction and the test contraction impacted the accuracy of the real-time decomposition. This open-source interface provides a set of tools for neuroscientists to design experimental paradigms where participants can receive real-time feedback on the output of the spinal cord circuits.

Before starting the experiment:
Hardware requirements.
The current version of I-Spin live directly interfaces with a multichannel EMG recording system developed by OT Bioelettronica, the Quattrocento. This system allows you to simultaneously record data from four grids of surface electrodes or intramuscular arrays of electrodes. 

For this, you will need:
•	An ethernet cable to connect the Quattrocento to the computer.
•	Up to four grids of 64 surface electrodes (e.g., GR04MM1305, GR08MM1305, GR10MM0808) with the associated adhesive foams to stick the grids over the skin.
•	Up to four pre-amplifiers
•	Up to four cables to connect the pre-amplifiers to Multiple Inputs #1 (MI#1), MI#2, MI#3, and MI#4 on the front panel of the Quattrocento.
•	A system recording the joint force or torque (e.g., an isokinetic dynamometer) with an BNC cable going to the Auxiliary Input 1 on the back panel of the Quattrocento.
•	A patient reference cable with a band dampened with water.
•	Stackable cables connecting each of the pre-amplifiers to another band dampened with water.

Connect the computer and the Quattrocento using the ethernet cable first. Then, connect the Quattrocento to the power and turn it on using the black button below the small screen. An IP address should appear. Before starting the experiment, you should check the connection between the laptop and the Quattrocento by opening a web browser and typing the IP address in the search bar as follow: http://169.254.1.10/ .

Software requirements.
I-Spin live works on any modern computer running Matlab. The current version of I-Spin live has been developed on Matlab R2022b and tested on a laptop equipped with an Apple M1 Max chip and 64 GB of RAM. However, we successfully ran I-Spin live on multiple Windows and MacOs computers with versions of Matlab ranging from 2018a to 2023a. The refresh rate of the screen can impact the visualisation of EMG channels. It is recommended to display the app to participants on a large screen with a reasonable frame rate (e.g., 60 Hz).
I-Spin live has three dependencies: the signal processing toolbox, the image processing toolbox, and the statistics and machine learning toolbox. Install them before running the app for the first time.

I-Spin live installation.
Up-to-date versions of I-Spin live are uploaded on GitHub in the following repository https://github.com/simonavrillon/I-Spin . The repository is structured with one folder ‘lib’ containing all the functions needed to run I-Spin live, and three scripts containing either the full code (ISpin_exported.m), the code + the design of the app (ISpin.mlapp), an installation file to have the app directly runnable from Matlab’s app library (ISpin.mlappinstall).

Option #1: ISpin_exported.m:
To run ISpin_exported.m, you first need to add the full folder with the library of functions and the main code to Matlab’s path. i) Go to the ‘Home’ tab, ‘Environment’ table, and click on ‘Set Path’; ii) Click on ‘Add with Subfolders…’, find the folder with all the scripts, and click on ‘Open’; iii) Click on ‘Save’, go to the ‘Editor’ tab, click on ‘Open’, find the script ISpin_exported.m, and click on ‘Run’.
Option #2: ISpin.mlapp
To run ISpin.mlapp, you need to open the app editor. i) Go to the ‘Apps’ tab and click on ‘Design App’; ii) Click on ‘Open’, find the script ISpin.mlapp and open it; iii) Go to the ‘Designer’ tab and click on ‘Run’. 
Option #3: ISpin.mlappinstall
Before the first use, you need to install the I-Spin live app. Open the script ISpin.mlappinstall and click on ‘Install’ in the pop up window. For all the following uses, open Matlab, go to the ‘Apps’ tab, find the app in the apps library and click on the shortcut to run the app.

Workflow of an experimental session:
A typical session starts with the visualization of raw EMG signals to check the baseline noise and remove the channels with artifacts and low signal-to-noise ratio. This step generates a mask, which is applied over the EMG data for the rest of the session to remove noisy channels. Second, the offset of the auxiliary channel recording the force is measured and removed for the rest of the session. Then, the participant performs a series of maximal voluntary contractions to measure the maximal force output and provide a target in % of maximal force during the successive tasks. Third, the participant performs a submaximal trapezoidal isometric contraction by tracking a visual target. EMG signals collected during this contraction are decomposed using a blind-source separation algorithm to identify a sample of motor units. These motor units are then used for all the forms of biofeedback in real-time. The users can visualize and manually edit the identified motor units to improve the performance of the decomposition in real-time. Finally, the participant performs a series of tasks in real-time using one of the three forms of visual feedback.

Citation and technical support.
For technical assistance and support, please contact:
Dr. Simon Avrillon
Sir Michael Uren Hub
Imperial College London
86 Wood Ln
London W12 0BZ
E-mail address: s.avrillon@imperial.ac.uk
ORCID: 0000-0002-2226-3528

If you use I-Spin live in your experimental setting, please cite the following preprint.
Rossato J, Hug F, Tucker K, Lacourpaille L, Farina D & Avrillon S. (2023). I-Spin live: An open-source software based on blind-source separation for decoding the activity of spinal alpha motor neurons in real-time. bioRxiv, 2023.2004.2014.536933.
