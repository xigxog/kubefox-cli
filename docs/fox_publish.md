## fox publish

The publish commands builds all components, publishes images, and adds the system to KubeFox.

```
fox publish [flags]
```

### Options

```
  -b, --builder string    BuildPack builder to use (default "paketobuildpacks/builder:base")
  -c, --clear-cache       clear BuildPack cache
  -d, --deploy            deploy system after publishing
  -h, --help              help for publish
  -g, --registry string   OCI image registry to publish images to (default "ghcr.io")
  -s, --skip-build        skip building of components
  -t, --tag string        tag name, use of semantic versioning is recommended (required)
```

### Options inherited from parent commands

```
  -o, --output string        output format. One of: "json", "yaml" (default "yaml")
  -r, --system-repo string   path of the system git repo (default "/home/xadhatter/Workspace/src/github.com/xigxog/kubefox-cli")
  -u, --url string           url to the KubeFox API
  -v, --verbose              enable verbose output
```

### SEE ALSO

* [fox](fox.md)	 - CLI for interacting with KubeFox

###### Auto generated by spf13/cobra on 24-Apr-2023
