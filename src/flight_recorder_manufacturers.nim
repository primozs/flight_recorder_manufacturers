{.push raises: [].}

import std/tables
import std/sequtils
import std/strutils

const manufacturers = @[
    {"name": "Aircotec", "long": "ACT", "short": "I"}.toTable,
    {"name": "Cambridge Aero Instruments", "long": "CAM", "short": "C"}.toTable,
    {"name": "ClearNav Instruments", "long": "CNI", "short": ""}.toTable,
    {"name": "Data Swan/DSX", "long": "DSX", "short": "D"}.toTable,
    {"name": "EW Avionics", "long": "EWA", "short": "E"}.toTable,
    {"name": "Filser", "long": "FIL", "short": "F"}.toTable,
    {"name": "Flarm", "long": "FLA", "short": "G"}.toTable,
    {"name": "Flytech", "long": "FLY", "short": ""}.toTable,
    {"name": "Garrecht", "long": "GCS", "short": "A"}.toTable,
    {"name": "IMI Gliding Equipment", "long": "IMI", "short": "M"}.toTable,
    {"name": "Logstream", "long": "LGS", "short": ""}.toTable,
    {"name": "LX Navigation", "long": "LXN", "short": "L"}.toTable,
    {"name": "LXNAV", "long": "LXV", "short": "V"}.toTable,
    {"name": "Naviter", "long": "NAV", "short": ""}.toTable,
    {"name": "New Technologies", "long": "NTE", "short": "N"}.toTable,
    {"name": "Nielsen Kellerman", "long": "NKL", "short": "K"}.toTable,
    {"name": "Peschges", "long": "PES", "short": "P"}.toTable,
    {"name": "PressFinish Electronics", "long": "PFE", "short": ""}.toTable,
    {"name": "Print Technik", "long": "PRT", "short": "R"}.toTable,
    {"name": "Scheffel", "long": "SCH", "short": "H"}.toTable,
    {"name": "Streamline Data Instruments", "long": "SDI",
        "short": "S"}.toTable,
    {"name": "Triadis Engineering GmbH", "long": "TRI", "short": "T"}.toTable,
    {"name": "Zander", "long": "ZAN", "short": "Z"}.toTable,
    {"name": "XCSoar", "long": "XCS", "short": ""}.toTable,
    {"name": "LK8000", "long": "XLK", "short": ""}.toTable,
    {"name": "GpsDump", "long": "XGD", "short": ""}.toTable,
    {"name": "SeeYou Recorder", "long": "XCM", "short": ""}.toTable,
    {"name": "Flyskyhy", "long": "XFH", "short": ""}.toTable,
    {"name": "XCTrack", "long": "XCT", "short": ""}.toTable,
    {"name": "Flymaster Live", "long": "XFM", "short": ""}.toTable,
    {"name": "XCTracer", "long": "XTR", "short": ""}.toTable,
    {"name": "SkyBean", "long": "XSB", "short": ""}.toTable,
    {"name": "leGPSBip", "long": "XSD", "short": ""}.toTable,
    {"name": "Logfly", "long": "XLF", "short": ""}.toTable,
    {"name": "Loctome", "long": "XLM", "short": ""}.toTable,
]

proc lookup*(id: string): string =
  let ID: string = id.toUpper
  let short = id.len == 1

  let filterProc = proc (t: Table[string, string]): bool =
    let res = if short: t.getOrDefault("short") == ID else: t.getOrDefault(
        "long") == ID
    return res

  var filtered = manufacturers.filter(filterProc)
  let res = if filtered.len == 1: filtered[0].getOrDefault("name", ID) else: ID
  return res

when isMainModule:
  block:
    let res = lookup("FLA")
    assert res == "Flarm"
  block:
    let res = lookup("V")
    assert res == "LXNAV"
  block:
    let res = lookup("XCS")
    assert res == "XCSoar"


