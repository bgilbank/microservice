[![CircleCI](https://circleci.com/gh/bgilbank/microservice.svg?style=svg)](https://circleci.com/gh/bgilbank/microservice)

## Project Overview

To operationalize an existing machine learning  microservice using kubernetes. This existing machine micorservice is a pre-trained sklean model that predicts housing prices in Boston, based on several conditions.

### Project Set-up

* `$ git clone https://github.com/udacity/DevOps_Microservices.git`
* `$ cd DevOps_Microservices/project-ml-microservice-kubernetes`
* Ensure python3 is installed on your local machine.

#### Create a virtualenv and activate your new environment

* `$ python3 -m venv ~/.devops`
* `$ source ~/.devops/bin/activate` 

#### Install project dependencies using Makefile

* Ensure pip is installed on your local machine.
* Install dependencies listed in requirements.txt using Makefile.
* `$ make install`

#### Install Docker

* Create a free [Docker account](https://hub.docker.com) and install the [Community Edition](https://docs.docker.com/v17.12/install/) on your local machine. **Note**: install the latest stable release.
* Check that Docker has been installed with `$ docker --version`

#### Install Hadolint to check your Dockerfile for errors

* Mac: `$ brew install hadolint`
* Windows:`$ scoop install hadolint`
* Run lint checks in your terminal by running `$ make lint`
* Your code should be rated 10.00/10.

#### Install Minikube

* `brew cask install minikube` 

### Tasks

#### Complete the instructions in the provided Dockerfile

* Open the Dockerfile with your preferred text editor.
* Review the completed example below for reference. Do not remove the hadolint ignore statement.
* Completed example: <https://github.com/bgilbank/microservice/blob/master/Dockerfile>.
* After completing the Dockerfile, run `$ make lint` again to ensure there are no errors in your Dockerfile.

#### Build and run your local Docker image by completing the instructions in run_docker.sh

* Completed example: <https://github.com/bgilbank/microservice/blob/master/run_docker.sh>.
* Run the completed file in your terminal with `$ ./run_docker.sh`
* If completed successfully, you should see a message that you have acheived a successful build, and that your app is being served on port 80.

#### Now make a prediction!

* With your app still running from the previous command. Open a new terminal window inside of your project folder.
* Type `$ ./make_prediction.sh`, which should produce a prediction.

#### Add a prediction log statement

* Shutdown the running server by typing Ctrl/Command + C.
* Open app.py with your text editor and add a log statement that prints out the output of prediction values.
* Example: ```# TO DO: Log the output prediction value
    LOG.info(f"output prediction: \n{prediction}")
    return jsonify({'prediction': prediction})
```
* Once complete, save the file and run `$ ./run_docker.sh` again in a new terminal window.
* Copy the output of the terminal and place it inside of a new file called docker_out.txt.
* Example: <https://github.com/bgilbank/microservice/blob/master/docker_out.txt>.
* Type Ctrl/Command + C to shutdown your running server.

#### Upload your Docker image

* Complete the upload_docker.sh file.
* Completed example: <https://github.com/bgilbank/microservice/blob/master/upload_docker.sh>.
* Upload your local Docker image with `$ ./upload_docker.sh`
* If successful, you will see the new image in your online Docker account.

#### Start and verify that Minikube is working

* `minikibe start`
* Verify you have one cluster running with `$ kubectl config view`

#### Deploy Kubernetes and save output logs

* Open and complete the file, run_kubernetes.sh.
* Completed example: <https://github.com/bgilbank/microservice/blob/master/run_kubernetes.sh>.
* After completing the file, run it with `$ ./run_kubernetes.sh`
* Once you have verified that your code is running, open a new terminal window inside of your project folder and run `$ ./make_prediction.sh` again.
* Copy the output and paste it into a new file called kubernetes_out.txt. Example: <https://github.com/bgilbank/microservice/blob/master/kubernetes_out.txt>.

#### Stop or delete your cluster

* Stop your kubernetes cluster with `$ minikube stop`
* Delete your Kubernetes cluster with `$ minikube delete`

#### CircleCI Integration

* Update the code in .circleci/config.yml with the code found here: <https://github.com/bgilbank/microservice/blob/master/.circleci/config.yml>.
* Sign up for a CircleCI account [here](https://circleci.com/signup/). Make sure you sign up with your Github account not Bitbucket.
* Once signed up, you will need to create a new repository on Github and push your code to it.
* Now that your code is on Github, go back to CircleCI and click on "Setup project". (Leave all configurations at their default values).
* You will now select the project you just created on Github, and select "Start building".
* If all your tests are passing you can add a status badge to your README.md file. This will indicate that your project has passed all CircleCI tests.
* To obtain your badge, go to <https://circleci.com/gh/your-username/your-repo-name/edit#badges>. 

 ### Project Files

* requirements.txt (Lists project dependencies)
* Dockerfile (Commands to assemble a Docker image)
* run_docker.sh (Build your local Docker image and run the flask app)
* make_prediction.sh (Provided script that determines housing prices in Boston)
* docker_out.txt (Displays the log statement that you  added to app.py)
* run_kubernetes.sh (Creates a kubernetes pod) 
* kubernetes_out.txt (Copied output from running `$ ./make_prediction.sh`)
* README.md (Project overview and instructions)
