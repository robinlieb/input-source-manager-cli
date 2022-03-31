# InputSourceManagerCli
Command line tool to orchestrate the input sources on MacOS.

## Usage

```
$ input-source-manager-cli --help
OVERVIEW: A Swift command-line tool to orchestrate the input sources on MacOS

USAGE: keyboard-input-source-manager-cli <subcommand>

OPTIONS:
  -h, --help              Show help information.

SUBCOMMANDS:
  get                     Gets the current input source
  list                    Lists input sources
  set                     Sets current input source

  See 'keyboard-input-source-manager-cli help <subcommand>' for detailed help.
```

```
$ input-source-manager-cli list --help
OVERVIEW: Lists input sources

USAGE: keyboard-input-source-manager-cli list [--all]

OPTIONS:
  --all                   List all input sources.
  -h, --help              Show help information.
```
