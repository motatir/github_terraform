This is a terraform project used to manage the github users and teams

The current project has multiple terraform modules
 * org_membership module is used to add the users to the organisation
 * Teams module is used to create the teams for the organisation
 * Members module is used to map the members present in users.yaml to respective teams
 * team_repository module is used to gives permission to repos based on particular team


## How to use this Project?

Install the latest version of terraform before executing this project.


In .env, set the environment variables:

```bash
export GITHUB_TOKEN="" ## Private access token 
export GITHUB_OWNER="" ## Organisation name(css)
export GITHUB_BASE_URL="" ## Enterprise github url

```
Executing the project-
1. Do the terraform formatting 
   ```bash
    terraform fmt -recursive
    ```   
2. Initialize the terraform module
   ```bash
    terraform init -backend-config="subpath=$STATE_PATH"

3. Verify the terraform execution plan.
   ```bash
    terraform plan -var-file anz-ghe.tfvars
        ```
4. To apply the changes to reach the desired state of the configuration. Input the personal token when it is asked.

   ```bash
    terraform apply -var-file anz-ghe.tfvars


## Github Access

The user must have valid github account.. If not they have to use the below mentioned confluence page to raise an access.
"https://confluence.service.anz/display/CUSS/1+-+IB+Github+Project+Access#id-1IBGithubProjectAccess-NEWProcess"

## How to get access to IB repositories and organisation as a normal member

  * First the user must add his or her lan id in the [users.yaml](https://github.service.anz/css/github-ib/blob/master/users.yaml) below the respective groups and raise a PR...
  * Once the PR gets approved from our team, the pipeline will run
  * Once after the pipeline run completes successfully the user will be added to the teams and organisation
  * The github-ib repo is a public repo so that the new user can add his or her name without getting organisation access

  
                       | Team name               |      Description                   |
                       |:------------:           |   :--------------------------:     |
                       | ib-admin               ---> Admin previlages on all Repositories 
                       | ib-developers          ---> Write access in all Repositories 
                       | ib-bot                 ---> Bot accounts 
                       | ib-review-finacle      ---> Reviewer previlage in "Limits", "CSO-Web", "Finacle-11"
                       | ib-reviewer-codefresh  ---> Reviewer previlage in "codefresh-ib"
                       | ib-reviewer-k8         ---> Reviewer previlage in "K8-Control-M", "gcp-ib", "openshift-finacle"

  * Admin users(If you are part of ib-admin): You will get admin access for all the repositories
  * ib-developers : You will get the write access to all repos
  * Reviewer users(If you are part of ib-review-finacle): You have write access to three repos "Limits", "CSO-Web", "Finacle-11"
  * Reviewer users(If you are part of ib-reviewer-codefresh): You have write access to "codefresh-ib"
  * Reviewer users(If you are part of ib-reviewer-k8):You have write access to three repos "K8-Control-M", "gcp-ib", "openshift-finacle"

## NOTE: If reviewer users want write permission to other repos they need to be part of ib-developers




## NOTE: If you are not part of any of the above mentioned groups you won't be part of the organisation as well.






## ONLY FOR ADMIN ACCESS:

## How to get admin access to the organisation(If he is a new user):

  * First you should ask the present admin to add you explicitly in github as an admin 

  * After that you have to add your lan id in the respective teams under [users.yaml](https://github.service.anz/css/github-ib/blob/master/users.yaml)

  * Then under [variables.tf](https://github.service.anz/css/github-ib/blob/master/variables.tf) in 4th line add your lan id in the array and raise a PR

## How to get admin access if you are already part of some teams:
 
  * First remove your lan id from all the teams you are in and raise a PR

  * After the above PR is merged ask the present admin to add you explicitly in github as an admin

  * After that you have to add your lan id in the respective teams under [users.yaml](https://github.service.anz/css/github-ib/blob/master/users.yaml)

  * Then under [variables.tf](https://github.service.anz/css/github-ib/blob/master/variables.tf) in 4th line add your lan id in the array and raise a PR



                    