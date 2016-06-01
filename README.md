Adding your database schemas during your Docker build step, so that they're in
the docker layer cache, is a great way to speed up your development process. This
allows you to get a fresh copy of your database by simply restarting your docker container.

This is an example for doing that.
