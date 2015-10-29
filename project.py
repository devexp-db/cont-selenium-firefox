config = {
    'name': 'cont-selenium-firefox',
    'macros': {
        'cont_selenium_firefox_version': '0.0.0',
        'pkglibdir': '$libdir/$name',
        'source_major': '2.48',
        'source_version': '$source_major.2',
        'source_basename': 'selenium-server-standalone-$source_version.jar',
        'source_url': 'http://selenium-release.storage.googleapis.com/' + \
                      '$source_major/$source_basename',
        'install_selenium': '$libexecdir/cont-selenium-downloader',
        'container_cmd': '$bindir/cont-selenium-cmd',
        'sel_docsdir': '$contdocdir/selenium-firefox',
        'examplesdir': '$sel_docsdir/examples',
    },
}
