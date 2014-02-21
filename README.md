ironworker_fixed
================

A little worker script to ensure there are a set number of another worker running at all times. Let's say you have
a worker X that pulls messages off a queue and processes them constantly and you want a set number of these running at all
times. Using this `starter` worker you can keep starting your worker X so they'll always be running. IronWorker has a max
run time of 60 minutes so this will start your workers on a schedule.

Be sure in your worker X that you exit cleanly before the 60 minutes are up.

## Getting Started

1. Clone this repo: `git clone https://github.com/treeder/ironworker_fixed.git`
1. Make an `iron.json` file with your [Iron.io](http://www.iron.io) token and project_id or download it from [HUD](http://hud.iron.io)
1. Modify the parameters in `starter.rb`
1. Upload it `iron_worker upload starter`
1. Schedule it `iron_worker schedule starter --run-every 3500` (Doing a bit less then 60 minutes because your workers exit cleanly before then... right??)
