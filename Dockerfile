FROM devkitpro/devkitarm:20210622

RUN apt-get update -y && apt-get install --no-install-recommends -y \
	python3 \
	python3-crypto \
&& rm -rf /var/lib/apt/lists/* && ls

WORKDIR /home
CMD make -j$(nproc)
