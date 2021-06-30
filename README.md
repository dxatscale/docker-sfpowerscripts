# docker-sfpowerscripts

# Supported tags and respective Dockerfile links

- [release-july21, latest](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Dockerfile)
- [23-ubuntu20.04](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Release23/Dockerfile)
- [22-ubuntu20.04](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Release22/Dockerfile)
- [21-ubuntu20.04](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Release21/Dockerfile)
- [20-ubuntu20.04](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Release20/Dockerfile)

# What is sfpowerscripts?

sfpowerscripts is a build system for package-based development on Salesforce that can be implemented in any CI/CD system of choice. sfpowerscripts is part of the DX@Scale initiative, productivity boosters for engineering teams on Salesforce.

![sfpowerscripts logo](https://repository-images.githubusercontent.com/248449736/5d08c600-728e-11ea-8267-ae1aceebea60 "sfpowerscripts")

# What's in the image?

The image contains sfpowerscripts and the dependencies it needs to run:

- Node
- OpenJDK
- git
- [SFDX CLI](https://www.npmjs.com/package/sfdx-cli)
- [sfpowerscripts](https://www.npmjs.com/package/@dxatscale/sfpowerscripts)
- [sfpowerkit](https://www.npmjs.com/package/sfpowerkit)
- [sfdmu](https://www.npmjs.com/package/sfdmu)


# License

View [license information](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/LICENSE) for this docker file.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
