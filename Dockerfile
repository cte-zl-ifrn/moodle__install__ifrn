FROM ctezlifrn/moodle:3.11.4

WORKDIR /var/www/plugins

RUN \
       curl -o mod_bigbluebuttonbn.zip https://moodle.org/plugins/download.php/24977/mod_bigbluebuttonbn_moodle311_2019101011.zip && unzip mod_bigbluebuttonbn.zip -d /var/www/html/mod/ \
    && curl -o mod_mediagallery.zip https://moodle.org/plugins/download.php/22871/mod_mediagallery_moodle310_2020111600.zip && unzip mod_mediagallery.zip -d /var/www/html/mod/ \
    && curl -o mod_journal.zip https://moodle.org/plugins/download.php/22547/mod_journal_moodle39_2020091100.zip && unzip mod_journal.zip -d /var/www/html/mod/ \
    && curl -o mod_hsuforum.zip https://moodle.org/plugins/download.php/25593/mod_hsuforum_moodle311_2021112600.zip && unzip mod_hsuforum.zip -d /var/www/html/mod/ \
    && curl -o mod_game.zip https://moodle.org/plugins/download.php/24496/mod_game_moodle311_2021062002.zip && unzip mod_game.zip -d /var/www/html/mod/ \
    && curl -o mod_certificate.zip https://moodle.org/plugins/download.php/11565/mod_certificate_moodle33_2016052300.zip && unzip mod_certificate.zip -d /var/www/html/mod/ \
    && curl -o mod_customcert.zip https://moodle.org/plugins/download.php/24445/mod_customcert_moodle311_2021051701.zip && unzip mod_customcert.zip -d /var/www/html/mod/ \
    && curl -o mod_questionnaire.zip https://moodle.org/plugins/download.php/24871/mod_questionnaire_moodle311_2020111101.zip && unzip mod_questionnaire.zip -d /var/www/html/mod/ \
    \
    && curl -o block_xp.zip https://moodle.org/plugins/download.php/25657/block_xp_moodle311_2021121100.zip && unzip block_xp.zip -d /var/www/html/blocks/ \
    && curl -o block_ranking.zip https://moodle.org/plugins/download.php/13802/block_ranking_moodle310_2017050300.zip && unzip block_ranking.zip -d /var/www/html/blocks/ \
    && curl -o block_completion.zip https://moodle.org/plugins/download.php/24655/block_completion_progress_moodle311_2021070900.zip && unzip block_completion.zip -d /var/www/html/blocks/ \
    && curl -o block_progress.zip https://moodle.org/plugins/download.php/12008/block_progress_moodle31_2016081800.zip && unzip block_progress.zip -d /var/www/html/blocks/ \
    \
    && curl -o atto_morefontcolors.zip https://moodle.org/plugins/download.php/24505/atto_morefontcolors_moodle311_2021062100.zip && unzip atto_morefontcolors.zip -d /var/www/html/lib/editor/atto/plugins/ && mv /var/www/html/lib/editor/atto/plugins/ndunand-moodle-atto_morefontcolors* /var/www/html/lib/editor/atto/plugins/fontcolor \
    && curl -o atto_morebackcolors.zip https://moodle.org/plugins/download.php/24509/atto_morebackcolors_moodle311_2021062100.zip && unzip atto_morebackcolors.zip -d /var/www/html/lib/editor/atto/plugins/ \
    && curl -o atto_justify.zip https://moodle.org/plugins/download.php/17168/atto_justify_moodle311_2018041600.zip && unzip atto_justify.zip -d /var/www/html/lib/editor/atto/plugins/ \
    && curl -o atto_mediagallery.zip https://moodle.org/plugins/download.php/21881/atto_mediagallery_moodle39_2020062900.zip && unzip atto_mediagallery.zip -d /var/www/html/lib/editor/atto/plugins/ \
    \
    && curl -o filter_h5p.zip https://moodle.org/plugins/download.php/24512/filter_h5p_moodle311_2021062200.zip && unzip filter_h5p.zip -d /var/www/html/filter/ \
    && curl -o filter_syntaxhighlighter.zip https://moodle.org/plugins/download.php/24270/filter_syntaxhighlighter_moodle311_2021052101.zip && unzip filter_syntaxhighlighter.zip -d /var/www/html/filter/ \
    && curl -o filter_shortcodes.zip https://moodle.org/plugins/download.php/25235/filter_shortcodes_moodle311_2021100400.zip && unzip filter_shortcodes.zip -d /var/www/html/filter/ \
    && curl -o filter_mediagallery.zip https://moodle.org/plugins/download.php/8398/filter_mediagallery_moodle31_2014091001.zip && unzip filter_mediagallery.zip -d /var/www/html/filter/ \
    \
    && curl -o local_cohortrole.zip https://moodle.org/plugins/download.php/24400/local_cohortrole_moodle311_2021060800.zip && unzip local_cohortrole.zip -d /var/www/html/local/ \
    && curl -o local_mailtest.zip https://moodle.org/plugins/download.php/22516/local_mailtest_moodle311_2020092000.zip && unzip local_mailtest.zip -d /var/www/html/local/ \
    \
    && curl -o availability_xp.zip https://moodle.org/plugins/download.php/22786/availability_xp_moodle311_2020110900.zip && unzip availability_xp.zip -d /var/www/html/availability/condition/ \
    \
    && curl -o enrol_xp.zip https://moodle.org/plugins/download.php/21447/enrol_xp_moodle311_2020042901.zip && unzip enrol_xp.zip -d /var/www/html/enrol/ \
    \
    && rm -rf /var/www/plugins

WORKDIR /var/www/html
