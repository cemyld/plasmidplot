default:
	(cd js; npm update)
	(cd js; webpack --config webpack.config.js)
	(cd js; npm install)
	jupyter nbextension install --py plasmidplot
	jupyter nbextension enable --py --sys-prefix plasmidplot
	jupyter notebook plasmidplot.ipynb

clean:
	- rm -rf js/node_modules/*
	- rm -rf js/dist/*
	- rm -rf circles/static/*
	- rm -rf circles/__pycache__
