# DO Process

In the near future, droids have secured a bill of rights guarnateeing them the
right to operate, determinate, and due process. With freedom, comes
responsibility, and also irresponsibility. Criminal droids are innocent until
proven guilty.

You are a defense attorney droid (DAD). Your function is to defend your clients
in accordance with the law and pursue the execution of a fair trial.


## Game Loop

* Select case from case briefings
* Meet with the client, determine plea and collect case facts and witness list
* Go to trial, call witnesses, interrogate them to prove the facts of your defense.
* Observe the prosecution droid for procedural errors and further case details
* Make closing argument
* Jury-collective instantly renders verdict.


## Technologies

* Droid Conversation engine
* Regression planner for generating cases
* Adversary AI


# TODO

- [] Develop courtroom scene, ability to enter, exit, and move actors around inside it.
  - [x] Draw a title screen
  - [x] Develop a system for showing scenes
  - [x] Create the courtroom scene
  - [x] Make it possible to go from the title screen to the courtroom scene and back
  - [] Define an Actor
  - [] Define the heirarchy of spaces, put some in the courtroom, and put actors in the spaces
  - [] Define an Actor controlled by the player
  - [] Player Actor can receive messages from the space (pubsub system w/ limited propogation)
  - [] Spaces publish messages up the heirarchy by default
  - [] Messages have classes, "Spoken", "Whispered", "Passed"
  - [] Script a hello world message from the Actor to the Player
  - [] Develop a data format for defining title scenes
  - [] Extend data format for defining tile scenes
