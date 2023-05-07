#	Team 12 - AI-lliance X&O
##	Elshan Naghizade, Tural Mehtiyev, Ali Asgarov, Eljan Mahammadli


# Reinforcement Learning for Grid World Navigation
This Python script provides an implementation of a Q-Learning algorithm for navigating grid worlds. It utilizes an API to interact with a series of grid worlds, with the goal of learning an optimal policy for navigating each world. The algorithm learns from trial and error by iteratively updating a Q-table that stores action values for each state in each world.

## Dependencies
The following libraries are used in this script:

matplotlib.pyplot
http.client
json
numpy
random
time
ssl
subprocess

### Configuration
Before running the script, set the working directory (wd) to the desired folder path. This folder will store the Q-table, reward map, and world traversal count data:
wd='C:/Users/eljanmuhammed/Documents/Git/Reinforcement-Learning' #please change before running the program

Set the path to the git_update.bat file:
fi='C:/git_update.bat'

## API Inputs
Set the API key, user ID, team ID, and base URL for interacting with the grid world API.

## Algorithm Parameters
The Q-Learning algorithm parameters include:

* n_worlds: Number of grid worlds
* start_world: Starting world index
* end_world: Ending world index
* world_size: Size of each world (assumed to be square)
* n_states: Total number of states in each world
* n_actions: Number of possible actions (4 for North, South, East, West)
* n_episodes: Number of episodes for learning
* alpha: Learning rate
* gamma: Discount factor
* epsilon: Exploration rate
* minimum_traversal_requirement: Minimum number of times each world should be traversed

## Main Loop
The main loop iterates through the episodes and grid worlds, resetting and entering the world using the API, then choosing and executing actions according to an epsilon-greedy strategy. The Q-table is updated based on the rewards received and the estimated action values of the next state.

After the agent completes an episode or reaches a terminal state, the Q-table, reward map, and world traversal count are saved to the working directory.

## Visualization
The script provides a simple visualization of the agent's position within the grid world using matplotlib.pyplot. The visualization shows the agent's current state, action taken, reward, and cumulative reward for the world.

## Learned Policy
After running the script, the learned policy for each world is printed out. The policy consists of the optimal action to take in each state according to the Q-table.
