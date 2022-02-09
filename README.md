# docker-sfpowerscripts

# Supported tags and respective Dockerfile links

- [release-feb22, latest](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Dockerfile)
- [release-dec21](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Dec21/Dockerfile)
- [release-nov21](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Nov21/Dockerfile)
- [release-oct21](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Oct21/Dockerfile)
- [release-sep21](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Sep21/Dockerfile)
- [release-aug21](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Aug21/Dockerfile)
- [release-july21](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/July21/Dockerfile)
- [23-ubuntu20.04](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Release23/Dockerfile)
- [22-ubuntu20.04](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Release22/Dockerfile)
- [21-ubuntu20.04](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Release21/Dockerfile)
- [20-ubuntu20.04](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/Release20/Dockerfile)

# What is sfpowerscripts?

sfpowerscripts is a build system for package-based development on Salesforce that can be implemented in any CI/CD system of choice. sfpowerscripts is part of the DX@Scale initiative, productivity boosters for engineering teams on Salesforce.

![sfpowerscripts logo](https://repository-images.githubusercontent.com/248449736/efc1bf15-b87f-4926-a675-7841650c2433 "sfpowerscripts")

# What's in the image?

The image contains sfpowerscripts and the dependencies it needs to run:

- Node
- OpenJDK
- git
- puppetteer dependencies
- [SFDX CLI](https://www.npmjs.com/package/sfdx-cli)
- [sfpowerscripts](https://www.npmjs.com/package/@dxatscale/sfpowerscripts)
- [sfpowerkit](https://www.npmjs.com/package/sfpowerkit)
- [sfdmu](https://www.npmjs.com/package/sfdmu)
- [sfdx-browserforce-plugin](https://www.npmjs.com/package/sfdx-browserforce-plugin)


# License

View [license information](https://github.com/dxatscale/docker-sfpowerscripts/blob/main/LICENSE) for this docker file.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
