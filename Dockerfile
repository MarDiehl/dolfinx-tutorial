FROM dokken92/dolfinx_custom:nightly


# create user with a home directory
ARG NB_USER=fenics
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

WORKDIR ${HOME}
COPY . ${HOME}
USER ${USER}
