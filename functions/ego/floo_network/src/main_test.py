from lib.container import Container
from lib.floo_network import FLOO_NETWORK

print(FLOO_NETWORK.begin(r'{"text":"Your spawnpoint has been set to ","color":"gray"},{"text":"' + FLOO_NETWORK.disp_coords + r'"},' + r'{"text":" at ","color":"gray"}' + FLOO_NETWORK.name_text() + r',{"text":"!","color":"gray"}'))

RANKINGS = {
    "APPS": 1,
    "AT": 2,
    "EC": 4,
    "LE": 8,
    "CMD": 16,
}

def get_ranking_val(*ranks):
    """
    Gets the sum given the rankings as strings

    eg. get_ranking_val("APPS", "EC", "CMD") -> 21
    """
    return sum(set(RANKINGS[rank] for rank in ranks))

def set_rankings(text):
    """
    Gets a text as a docstring and output the scoreboard settings for each player
    """
    data = []
    cmd_list = []
    for line in text.splitlines():
        if not line.strip():
            continue

        name, ranks = line.strip().split(None, 1)
        ranks = tuple(ranks.split())
        data.append((name, ranks))

    for line in data:
        name, ranks = line

        if not ranks:
            continue

        for rank in ranks:
            cmd_list.append("{0} MCTeams = {1}".format(name, RANKINGS[rank]))

    return Container.cmd_from_list(cmd_list)