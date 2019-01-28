FROM node:10
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
&& echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | \
tee /etc/apt/sources.list.d/google-chrome.list && apt-get update && apt-get \
-y install google-chrome-stable && rm -rf /var/lib/apt/lists/* && apt-get clean \
&& google-chrome-stable --version
