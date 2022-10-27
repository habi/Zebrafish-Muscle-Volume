---
title: Materials & Methods David *Cox7a Project
author: David Haberthür
---

# Materials & Methods
## Tomographic imaging
After $PREPARATION, the 10 samples were imaged on a Bruker SkyScan 1272 high-resolution microtomography machine (Control software version 1.1.19, Bruker microCT, Kontich, Belgium).
The machine is equipped with a Hamamatsu L11871_20 X-ray source and a XIMEA xiRAY16 camera.
The X-ray source was set to a tube voltage of 70.0 kV and a tube current of 142.0 µA, the x-ray spectrum was filtered by Al 0.5mm prior to incidence onto the sample.
For each fish we scanned, we recorded a set of 5 stacked scans to image the full length of the fishes, each stack was recorded with 482 projections of 1632 x 1092 pixels at every 0.4° over a 180° sample rotation.
Every single projection was exposed for 862 ms, 3 projections were averaged to greatly reduce image noise.
This resulted in a scan time of approximately 36 minutes per stack and about 3 hours and 4 minutes per sample (with 5 stacks each).
In total, we scanned 50 stacks and thus the total scanning time for this project was about 1 day and 7 hours.

The projection images were then subsequently reconstructed into a 3D stack of images with NRecon (Version 2.0.0.5, Bruker microCT, Kontich Belgium) using a ring artifact correction of 7.
The whole process resulted in three dimensional datasets with an isometric voxel size of 8.0 µm.

## Muscle volume analysis
The analyis of the muscle volume was performed in a set of Jupyter [@Kluyver2016] notebooks written in Python, all of which are available online [@Haberthur2022].

At first we generated preview images in anteroposterior, lateral and dorsoventral directions of the fishes for previewing the scans.
We then first cropped the datasets of all the fishes to a 'common' length, spanning from the center of the otoliths to the start of the tailfin.
This cropping was performed on a gray value threshold based detection of the otoliths and tail fin on the anteroposterior and lateral views of the fishes.
To suppress the noise inherent in the tomographic reconstructions, we applied a three-dimensional median filtered (size=5) to the cropped datasets.
We used the peaks of the gray value histogram of each dataset (see Fig. 1) as marker labels for a random walker segmentation [@Grady2006] of the reconstructions into background, guts and muscles.
The three-dimensional volume of the largest connected component of the segmented muscles was tabulated and plotted normalized to the cropped length of the fishes (see Fig. 2).

![Figure 1: Gray value histograms of datasets.](Output/3d484db/Histograms.Median.Experiment.png)

![Figure 2: Segmented muscle volume, normalized to otolith-tail distance.](Output/3d484db/SegmentedVolume.Normalized.Length.png)


# Results
## Muscle volume analysis

We need to verbatim copy the results either directly from the notebook or link to the exported data file which was processed by the other authors