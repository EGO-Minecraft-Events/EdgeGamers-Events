from lib.container import Container
from lib.event import Event


class SpawnpointSystem(Container):
    valid_options = {
    }
    
    def __init__(self, id, **options):
        if not isinstance(id, int):
            raise TypeError("The ID must be an event.Event type")
