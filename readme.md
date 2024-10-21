# flight-recorder-manufacturers

- [Turbo87/flight-recorder-manufacturers](https://github.com/Turbo87/flight-recorder-manufacturers)

## Usage

```py
from igcstats.flight_recorder_manufacturers import MANUFACTURERS

for item in MANUFACTURERS:
  print(item["name"])
```

```py
from igcstats.flight_recorder_manufacturers import lookup

lookup("V"); // -> LXNAV
lookup("FLA"); // -> Flarm
lookup("XCS"); // -> XCSoar
```

