In .env, set the environment variables:

```bash
export GITHUB_TOKEN="" ## Private access token 
export GITHUB_OWNER="" ## Organisation name(css)
export GITHUB_BASE_URL="" ## Enterprise github url

```
## Github Access
The user must have valid github account.. If not they have to use the below mentioned confluence page to raise an access.
"https://confluence.service.anz/display/CUSS/1+-+IB+Github+Project+Access#id-1IBGithubProjectAccess-NEWProcess"



## How to get access to IB repositories and organisation as a normal member
  First the user must add his or her lan id in the [users.yaml]() below the respective groups and raise a PR...
  
                       | Team name               |      Description                   |
                       |:------------:           |   :--------------------------:     |
                       | ib-admins-release       | Approving the change to master     | 
                       | ib-review-finacle       | PR reviewer for Finacle components |
                       | ib-admins               | IB Acceleration Team               |
                       | ib-bots                 | Only Service Account for automation|
                       | ib-developers-pool      | IB Engineers Pool                  |
                       | ib-release-leads        | IB Release Lead Team               |
                       | ib-reviewers-codefresh  | Reviewing Codefresh changes in IB  |
                       | ib-reviewers-k8         | Reviewing K8 Changes in IB         |

## NOTE: If you are not part of any of the above mentioned groups you won't be part of the organisation as well.


## How to get admin access to the organisation(If he is a new user):

  * First you should ask the present admin to add you explicitly in github as an admin 

  * After that you have to add your lan id in the respective teams under [users.yaml]()

  * Then under [variables.tf]() in 4th line add your lan id in the array and raise a PR

## How to get admin access if you are already part of some teams:
 
  * First remove your lan id from all the teams you are in and raise a PR

  * After the above PR is merged ask the present admin to add you explicitly in github as an admin

  * After that you have to add your lan id in the respective teams under [users.yaml]()

  * Then under [variables.tf]() in 4th line add your lan id in the array and raise a PR



                    