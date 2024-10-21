# flight-recorder-manufacturers

- [Turbo87/flight-recorder-manufacturers](https://github.com/Turbo87/flight-recorder-manufacturers)

## Usage

```nim
from flight_recorder_manufacturers import manufacturers

for item in manufacturers:
  echo item["name"]
```

```nim
from flight_recorder_manufacturers import lookup

lookup("V"); // -> LXNAV
lookup("FLA"); // -> Flarm
lookup("XCS"); // -> XCSoar
```
