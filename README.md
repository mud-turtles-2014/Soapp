SOAPP
==============
==============

State of the App, or SOAPP, is a way for software developers to see what others in their team are working on. SOAPP uses the Github API to grab user’s projects online, and combines that with data from local machines. SOAPP then displays this information in an easy to read overview dashboard.

==============
==============

## The Team

* [Anthony Ferragano](https://github.com/aferragano)
* [Chris Wallwork](https://github.com/cwallwork)
* [Rafael Rocha](https://github.com/rafaelrochasilva)


SOAPP
==============
============
=======
Download the rake task file and place the file within the app/lib/task folder of the Rails project you want to track.

Run the rake task:

rake use:soapp

What does it do?

The rake task will create a post-commit file inside the .git/hooks folder of your repository, and set that file to be executable.

Now, after every local commit the git hook will send information about the commit to SOAPP. Using the SOAPP dashboard you can see every local commit and prevent possible problems before they happen.

Push for team members

Once you push the repository to github other users of your repository can run the rake task and their progress will be tracked.

Without ruby

Download the git hook file. Copy the file to the .git/hooks directory within your repo. Now, while in the hooks directory type: chmod +x post-commit . This will set the hook to executable.
