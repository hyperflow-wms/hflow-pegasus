# hflow-pegasus

Small dockerized tool to convert Pegasus WMS (https://pegasus.isi.edu) DAX workflows to HyperFlow JSON workflows.

## Build
```
git clone https://github.com/hyperflow-wms/hflow-pegasus
cd hflow-pegasus
docker build -t <container_name> .
```

## Usage
```
docker run -v <local_dir>:/wfdir hyperflowwms/hflow-pegasus [-c command_name] dax_args...
```
where
- `local_dir` is a local directory that should contain Pegasus' `dax-generator` and all other files required to generate the DAX
- `command_name` is the name of the command to be used in the generated HyperFlow's `workflow.json`
- `dax_args` are arguments that should be passed to `dax-generator`
