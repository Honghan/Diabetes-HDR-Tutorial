# Diabetes-HDR-Tutorial

## Objectives
- data model (OMOP)
- terminology (ICD-10, Drug standards: BNF)
- phenotype computation
- R tutorial

## Environment setup
### Download the zip file from this Github repository
This repository includes
- summary.docx
- docker-compose.yml
- r-files
- tutorial_data.tar.gz
- raw_data.zip

### Install Docker
<https://docs.docker.com/get-docker/>

### Unzip the data file, change the directory
tutorial_data.tar.gz

### Run docker-compose file
docker-compose.yml

### Optional: pgadmin for checking the database

### Jupyter notebook for R

### Optional: Rstudio for R


## TODO
- [ ] (HW) installation of postgresql server on AWS EC2; give MW AWS EC2 access
- [ ] (MW) installation of pgAdmin 
- [ ] (MW) populate database and tables using OMOP CDM V6.0, using [this link](https://github.com/OHDSI/CommonDataModel/tree/master/PostgreSQL)
- [ ] (MW) download synthetic data generator BadMedcine from  [here](https://github.com/HicServices/BadMedicine), generate 3 csv files: Demography, Biochemistry, Prescribing and Hospital Admissions.
- [ ] (HW & MW) mapping the csv files into the CDM schema
- [ ] (HW & MW) R tutorial using Jupyter notebook
