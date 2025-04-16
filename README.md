# DreamBooth Reproduction

This project reproduces the main contributions of the DreamBooth paper. It includes training code and environment setup instructions for both Windows (Bergeron lab machines) and general-purpose systems.

##  Setup Instructions

###  For Bergeron Windows Machines

Use the files inside the `setup_env/windows-bergeron-setup/` folder. These are specifically configured for the Bergeron lab's Windows machines.

1. Run the `.bat` file inside the folder.
2. It will automatically:
   - Install **VSCode**
   - Install **Miniconda**
   - Set up the required **Conda environment**

### 🐧 For Other Machines

just create the conda enviorment from `setup_env/enviorment.yml`

```bash
conda env create -f environment.yml
```

## Training a model
The subject's images (3-5 image) should be in `src/db/<YOUR_SUBJECT>_db/`

if using the prior perservation loss, the proper class images should be made using `src/generate_class_images.ipynb` before you start training the model. They would be created in `src/class_pictures/class_<YOUR_CLASS_HERE>/<STABLE_DIFUSION_ID>_<resolution>/`

you can also use `src/remove_bg.ipynb` to remove the background of your subject images (results in better pictures).


## Evaluatin a model

you can run the `src/evaluate.ipynb` to load the lora model included in this repoitory from `experiments/misha_lora_best`.
(actually, i cant update the lora model.... its still 200mb which is too big for git...)

It would still need to download 5gb for stable diffusion v2 though.

some results can also be found in `results`


