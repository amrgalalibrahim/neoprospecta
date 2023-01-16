# neoprospecta
Docker container pipeline
Microbiome Data Analysis App
This app is designed to analyze gut microbiota data collected from mice, and display the results in an interactive table. It includes steps for trimming and filtering data, generating a taxonomic identification using a reference bank, creating an OTU table, and displaying the results using the Django framework.
Prerequisites
Python (version 3.7 or later)
R (version 3.6 or later)
Django (version 3.1 or later)
Required python packages specified in requirements.txt
MiSeq sequencing data for the V4 region of the 16S rRNA gene
FASTA reference sequence bank for bacterial species
Installation and Setup
Clone the repository from GitHub:
git clone https://github.com/amrgalalibrahim/neoprospecta.git

Create and activate a virtual environment:
python -m venv env
source env/bin/activate

Install the required packages:
pip install -r requirements.txt


Create a superuser by running
python manage.py createsuperuser

and fill the prompted fields.
Run the data trimming and filtering script to generate the PHRED quality reports and taxonomic identifications:
python data_processing.py

Generate the OTU table using the script:
python generate_otu_table.py

Run the server:
python manage.py runserver

To use the Docker file 
#using command line:
docker run -it myimage

#You can also mount the input and output directories from the host machine to the container so that the pipeline can read the input files and write the output files to the host machine instead of the container's filesystem.
#Copy code
docker run -it -v /path/to/input/dir:/app/input -v /path/to/output/dir:/app/output myimage
#Make sure that the paths and file names in the Dockerfile and in the Python script match your setup with python3.8.

#Also, this code assumes that you have a Docker installed on your system and the user running the script has permissions to use it.
#If not, please setup using
snap install docker
Additional Notes
Data processing and generating the OTU table can take a long time depending on the size of the data
Some steps may require additional configuration or setup depending on the specific use case.
Thank you for your interest in the Microbiome Data Analysis App, I hope you find it useful!
