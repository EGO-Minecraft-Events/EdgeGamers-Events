import os


directories = tuple(directory[0] for directory in os.walk("../functions/ego"))
output_lines = []

for directory in directories:
    try:
        with open(os.path.join(directory, "src", "out_teams.txt")) as file:
            lines = file.read().splitlines()
            for line in lines:
                output_lines.append(line)

    except FileNotFoundError:
        pass

with open("team_config.txt", "w") as file:
    for line in output_lines:
        file.write(line + "\n")
