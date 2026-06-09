# Mastering Cellpose: From Installation to Advanced Features

## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
  - [System requirements](#system-requirements)
  - [Install with conda](#install-with-conda)
  - [Install with a Python venv](#install-with-a-python-venv)
  - [Enable GPU acceleration](#enable-gpu-acceleration)
- [The Cellpose GUI](#the-cellpose-gui)
  - [Loading images](#loading-images)
  - [Views](#views)
  - [Drawing masks](#drawing-masks)
  - [Mouse controls](#mouse-controls)
  - [Keyboard shortcuts](#keyboard-shortcuts)
- [Segmentation with Cellpose-SAM](#segmentation-with-cellpose-sam)
  - [Running a segmentation](#running-a-segmentation)
  - [Tuning the result](#tuning-the-result)
- [Training your own model (human-in-the-loop)](#training-your-own-model-human-in-the-loop)
- [Image restoration](#image-restoration)
- [Classic Cellpose (v1–3): channels, diameter, and the model zoo](#classic-cellpose-v13-channels-diameter-and-the-model-zoo)

## Introduction

Cellpose is a deep-learning method for segmenting cells and nuclei in microscopy images.
The current version, **Cellpose-SAM (v4)**, provides a single generalist model that works
across imaging modalities, channel orders, and object sizes, so in most cases you do not
need to assign channels or set a cell diameter. Earlier versions introduced the core
generalist model (v1), human-in-the-loop training (v2), and image restoration (v3); those
features remain available and are covered below.

Key capabilities:

- A generalist model that segments many cell and nucleus types without per-dataset training.
- 2D and 3D segmentation.
- GPU acceleration (NVIDIA CUDA and Apple Silicon MPS).
- A graphical interface, a Python API, and a command-line interface.
- Optional fine-tuning on your own data (human-in-the-loop training).
- Optional image restoration (denoising, deblurring, upsampling).

Reference papers:

- Cellpose-SAM (v4): Pachitariu, M., Rariden, M., & Stringer, C. (2025). [Cellpose-SAM: superhuman generalization for cellular segmentation](https://www.biorxiv.org/content/10.1101/2025.04.28.651001v1). *bioRxiv*.
- Cellpose 1.0: Stringer, C., Wang, T., Michaelos, M., & Pachitariu, M. (2021). [Cellpose: a generalist algorithm for cellular segmentation](https://www.nature.com/articles/s41592-020-01018-x). *Nature Methods, 18*(1), 100–106.
- Cellpose 2.0: Pachitariu, M., & Stringer, C. (2022). [Cellpose 2.0: how to train your own model](https://www.nature.com/articles/s41592-022-01663-4). *Nature Methods, 19*, 1634–1641.
- Cellpose 3.0: Stringer, C., & Pachitariu, M. (2024). [Cellpose3: one-click image restoration for improved segmentation](https://www.biorxiv.org/content/10.1101/2024.02.10.579780v1). *bioRxiv*.

## Installation

> [!TIP]
> If you are new to virtual environments, see
> [Setting up a Python virtual environment](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Python/setting-up-a-python-virtual-environment.md#conda)
> first.

### System requirements

Linux, Windows, and macOS are supported. At least 8 GB of RAM is required; 16–32 GB is
recommended for large images and 3D volumes. A GPU is optional but speeds up processing
significantly on large datasets. If you run into installation problems, consult the
[official installation docs](https://cellpose.readthedocs.io/en/latest/installation.html).

### Install with conda

1. Install a conda distribution such as [Anaconda](https://www.anaconda.com/download/success)
   or Miniconda. On Windows you may need to use the Anaconda Prompt if conda is not on your PATH.
2. Create an environment (Python 3.10 is recommended; 3.9 and 3.11 also work):
   ```bash
   conda create --name cellpose python=3.10
   ```
3. Activate it:
   ```bash
   conda activate cellpose
   ```
4. Install Cellpose with the GUI:
   ```bash
   python -m pip install cellpose[gui]
   ```
   On zsh shells, quote the extra: `python -m pip install 'cellpose[gui]'`.

> [!NOTE]
> You must run `conda activate cellpose` before launching Cellpose each time. The
> [Automate Cellpose GUI Opening](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Image%20Analysis/Automate_Cellpose_GUI_Opening.md)
> tutorial provides a small script that does this for you.

The first time Cellpose runs, it downloads the model weights automatically.

### Install with a Python venv

Use this if you prefer not to install conda and already have Python 3.10+ available. The
environment and its packages live in a directory you choose and are isolated from other
environments.

1. Confirm your Python version: `python --version` (3.10 or later recommended).
2. Create the environment in your chosen directory:
   ```bash
   python -m venv cellpose
   ```
3. Activate it:
   - Windows: `cellpose\Scripts\activate`
   - macOS / Linux: `source cellpose/bin/activate`

   The prompt should now show the `(cellpose)` prefix.
4. Install Cellpose with the GUI:
   ```bash
   python -m pip install cellpose[gui]
   ```
5. Launch it with `python -m cellpose`.
6. Deactivate the environment when done with `deactivate`.

### Enable GPU acceleration

Cellpose runs on [PyTorch](https://pytorch.org/). A standard install may provide a
CPU-only build, so to use an NVIDIA GPU you install a CUDA build of PyTorch.

1. Install the latest [NVIDIA driver](https://www.nvidia.com/Download/index.aspx) for your GPU.
2. Remove the CPU build of PyTorch:
   ```bash
   pip uninstall torch
   ```
3. Install a CUDA build using the selector on the
   [PyTorch website](https://pytorch.org/get-started/locally/), choosing the CUDA version
   supported by your driver. For example:
   ```bash
   conda install pytorch pytorch-cuda=12.1 -c pytorch -c nvidia
   ```
4. Verify the install reports a CUDA build (for example `cu121`, not `cpu`):
   ```bash
   python -c "import torch; print(torch.cuda.is_available())"
   ```

> [!NOTE]
> On Apple Silicon (M1–M3), Cellpose uses MPS acceleration automatically; run it with
> `python -m cellpose --use_gpu`.

## The Cellpose GUI

Launch the GUI from an activated environment:

```bash
python -m cellpose
```

For 3D stacks (expected format `Z × channels × Ly × Lx`), open it with
`python -m cellpose --Zstack`.

![Cellpose GUI](https://www.cellpose.org/static/images/cellpose_gui.png)

### Loading images

Drag and drop an image file (`.tif`, `.png`, `.jpg`, or `.gif`) into the GUI to segment it
or to label it manually, or press `Ctrl + L` to choose a file. While the model runs, a
progress bar appears and the GUI is unresponsive until it finishes. The terminal where you
launched the GUI prints details about what is happening.

### Views

Toggle between channels and colours, which helps when working with multi-channel images.
After segmentation, switch between views to see how the model interpreted the image.

### Drawing masks

To create a mask, right-click to start, then hover the cursor around the object without
holding the button; the mask closes when the cursor returns to the red starting circle
(or press `Esc`). Masks cannot overlap — a new mask drawn over an existing one is cropped
at the boundary.

- In **2D mode** with *single stroke* enabled, draw each mask in one continuous stroke.
  Each mask is autosaved to a `_seg.npy` file after it is drawn.
- In **3D mode**, disable *single stroke* to draw separate strokes per plane and press
  `Enter` to close the mask. Masks are not autosaved in 3D — save with `Ctrl + S`.
- **Bulk deletion**: click *delete multiple*, then select individual masks or drag a
  rectangular region; confirm with *done* or abandon with *cancel*.

### Mouse controls

- **Pan** — left-click + drag
- **Zoom** — scroll wheel (or the `+`/`=` and `-` buttons)
- **Select mask** — left-click on a mask
- **Delete mask** — Ctrl (Cmd on macOS) + left-click
- **Merge masks** — Alt + left-click (merges the last two)
- **Start drawing a mask** — right-click
- **End drawing a mask** — `Esc`, right-click, or return to the red starting circle

### Keyboard shortcuts

- `Ctrl + L` — load an image
- `Ctrl + Z` — undo the last mask or stroke
- `Ctrl + S` — save masks to a `_seg.npy` file
- `Ctrl + 0` — clear all masks
- `Ctrl + T` — train a new model
- `A` / `D` or `←` / `→` — previous / next image
- `X` — toggle masks on or off
- `Z` — toggle outlines on or off
- `Page Up` / `Page Down` — view flows / cell probability
- `,` / `.` — decrease / increase brush size
- `Space` — reset zoom
- `Ctrl + H` — help

## Segmentation with Cellpose-SAM

Cellpose-SAM is the default model (`cpsam`). Because it generalizes across imaging
modalities, channel orders, and object sizes, you usually do not need to select channels
or set a cell diameter — the workflow is simply to load an image and run segmentation.

### Running a segmentation

In the GUI, drag in an image and click **run segmentation**; the predicted masks are drawn
on the image when **MASKS ON** is checked.

From Python:

```python
from cellpose import models, io

model = models.CellposeModel(gpu=True)   # loads Cellpose-SAM by default
img = io.imread("cells.tif")
masks, flows, styles = model.eval(img)

print(f"Found {masks.max()} masks")
```

`masks` is a labelled array (0 = background, 1, 2, … = objects). For best speed and
accuracy, resize images so that objects are smaller than about 100 pixels across.

### Tuning the result

Two settings, available in the GUI and as `eval()` arguments, control how masks are
selected:

- **Flow threshold** (`flow_threshold`) filters out masks whose predicted flows are
  inconsistent with the image. Increase it to keep more masks; decrease it to remove
  ill-shaped masks.
- **Cell probability threshold** (`cellprob_threshold`) sets the minimum cell-probability
  value for a pixel to be included in a mask. Decrease it to recover more or larger masks;
  increase it to drop faint or spurious masks.

```python
masks, flows, styles = model.eval(
    img,
    flow_threshold=0.4,
    cellprob_threshold=0.0,
)
```

## Training your own model (human-in-the-loop)

When the generalist model is not accurate enough for your data, you can fine-tune it on
your own labels. This human-in-the-loop workflow was introduced in Cellpose 2 and now
fine-tunes Cellpose-SAM. A [video walkthrough](https://www.youtube.com/watch?v=3Y1VKcxjNy4)
is available.

1. Drag in an image from a folder of similar images (for example, the same cell type).
2. Run the generalist model and correct the result: draw missing objects (right-click) and
   delete incorrect ones (Ctrl + click). Manual edits autosave to a `_seg.npy` file.
3. Open **Models > Train new model…** (or press `Ctrl + T`), choose a model to start from,
   name your model, and start training. The default parameters work for most data.
4. The model trains (much faster with a GPU) and then runs automatically on the next image.
   Repeat the correct-and-retrain cycle as needed.
5. The trained model is saved in your image folder and becomes available under the custom
   model section of the GUI.

> [!CAUTION]
> Each time you train, the network re-trains on **all** labelled images in the folder,
> weighting them equally. Keep images that belong to the same model together in one folder
> so the model is not biased toward images it was trained on earlier.

For 3D data, save spaced-out XY, YZ, and XZ slices into a folder, train on those, then
apply the custom model to new 3D volumes.

## Image restoration

Introduced in Cellpose 3, the `denoise` module restores degraded images before
segmentation. It offers two classes:

- `DenoiseModel` — image restoration only.
- `CellposeDenoiseModel` — restoration followed by segmentation.

Three restoration types are provided — **denoising**, **deblurring**, and **upsampling** —
each with a model trained on the `cyto3` set and one trained on the `nuclei` set. Learn
more in the [Cellpose 3 paper](https://www.biorxiv.org/content/10.1101/2024.02.10.579780v1.full.pdf).

## Classic Cellpose (v1–3): channels, diameter, and the model zoo

The settings below apply to the **classic Cellpose models (v1–3)** such as `cyto3` and
`nuclei`. Cellpose-SAM does not require them, but they remain relevant if you use a classic
model or work with older notebooks.

### Channels

Classic cytoplasm and nucleus models are trained on two-channel images. You specify which
channels to use as `channels = [cytoplasm, nucleus]`, where `0 = grayscale`, `1 = red`,
`2 = green`, `3 = blue`:

- Grayscale or single-channel images: `channels = [0, 0]`.
- Green cytoplasm with blue nuclei: `channels = [2, 3]`.
- For the `nuclei` model, the second channel is always `0` (for example, `channels = [3, 0]`
  to segment blue nuclei).

### Diameter

Classic models use the expected object diameter. Enter it manually or press **Calibrate**
to let the model estimate it (shown as a disk at the bottom of the view).

> [!CAUTION]
> The diameter changes the result. If it is set smaller than the true size, Cellpose tends
> to over-split objects; if it is set too large, it tends to over-merge them.

### The model zoo

Each model is downloaded automatically to your local models directory on first use (set by
`CELLPOSE_LOCAL_MODELS_PATH`).

> [!NOTE]
> The built-in models were trained with objects resized to a diameter of 30.0
> (`diam_mean = 30`), except the `nuclei` model, which used 17.0 (`diam_mean = 17`).

**Generalist models**

- `cyto3`, `cyto2`, `cyto` — cytoplasm models (two-channel: channel to segment plus an
  optional nuclear channel).
- `nuclei` — nucleus model (second channel set to zeros).

**Dataset-specific models** (from the Cellpose 3 paper; no size model — a diameter of 0.0
falls back to `diam_mean = 30`):

- Cells: `tissuenet_cp3`, `livecell_cp3`, `cyto2_cp3`.
- Yeast: `yeast_PhC_cp3` (phase contrast), `yeast_BF_cp3` (bright-field).
- Bacteria: `bact_phase_cp3` (phase contrast), `bact_fluor_cp3` (fluorescence),
  `deepbacs_cp3` (bright-field and fluorescence).
