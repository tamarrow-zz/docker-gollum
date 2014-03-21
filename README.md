docker-gollum
=============

This is a Dockerfile that installs [gollum](https://github.com/gollum/gollum) and a minutely cron job pushing your changes made to the Wiki back up to the remote repository. A word of advice: As you'll have to use a [deploy key](https://help.github.com/articles/managing-deploy-keys#deploy-keys) to make that happen, ensure to [duplicate the repository](https://help.github.com/articles/duplicating-a-repository), so that you can set it to private. Simply forking the repository won't work as you can't make forks of public repositories private anymore.

# Installation

1. [Create](https://github.com/new) a new private repository for docker-gollum
2. Make a bare clone of docker-gollum

        git clone --bare https://github.com/fooforge/docker-gollum.git

3. Mirror-push to the new repository

        git push --mirror https://github.com/[username]/docker-gollum.git

4. Clone your repository

        git clone https://github.com/[username]/docker-gollum.git

5. Make the relevant changes to your copy of docker-gollum

        cd docker-gollum
        ssh-keygen -t rsa -b 4096 -f .docker/ssh_id_rsa
        # Change remote URL in the Dockerfile on line 47
        # Change username and email address in `.docker/gitconfig`
        # Commit your changes

6. Add `.docker/ssh_id_rsa.pub` at https://github.com/[username]/docker-gollum/settings/keys

# Usage

1. Build the image

        # Inside the docker gollum repository's directory
        sudo docker build -t science_1 --rm=true .

2. Run the container

        sudo docker run -name docker-gollum_1 -p 0.0.0.0:8003:80 -t docker-gollum_1

# License

Licensed under the MIT license. For more information see the [LICENSE](./LICENSE) file.
