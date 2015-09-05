# CV template

You will find the code of my online CV. The idea was to build a mobile first and responsive Website.

## Tools and technologies used

* yeoman
* generator-awesomeness
* bower
* grunt
* SASS
* susy
* require.js
* jQuery

## Installation

First install node.js then install grunt cli using npm

```
npm install -g grunt-cli
```

Install bower

```
npm install -g bower
```

Install the node packages for the frontend and the bower components

```
cd frontend
npm install
mkdir bower_components
bower install
```

You need to have Ruby and Compass installed and in your system PATH.

Install ruby, compass and other requiered gems

```
gem install compass
gem install compass-normalize
gem install susy
gem install breakpoint
```
## Development 

To customize the frontend you will find the code in `frontend/mycv`

You can use the command `grunt serve` in the frontend directory to run a local webserver to serve your creation.

Thanks to a watcher the browser will refresh everytime you change some CSS or HTML code using your favorite code editor.

The server provides a URL with your current IP address to allows you to browse your CV on your mobile devices while developing.

A browser-sync is also running and will refresh all devices and browsers which got your CV development URL loaded. Another plus of the browser-sync feature is that you can interact with all the different browsers in the same time when scrolling on one browser.

## Deployment to production

Developing is great but at the end your goal is to publish your CV online. To make your code production ready you will have to run the command `grunt build` in the frontend directory. This create a `dist` directory with the HTML, CSS, and JS minified.
Only this `dist` directory has to be uploaded to your production server.

## Upcoming

* The CV needs to be in English and in French.
* In PHP create an interface to update the CV content.
* In PHP Create an interface to publish the content.
* Use markdown to update CV
* Save CV data in a XML File
