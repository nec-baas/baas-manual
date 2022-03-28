#!/bin/sh
dl() {
    url=$1
    file=$2

    if [ ! -e $file ]; then
        echo $1 to $2
        curl -L $1 > $2
    fi
}

dl http://www.apache.org/licenses/LICENSE-2.0.txt Apache-LICENSE-2.0.txt

dl https://raw.githubusercontent.com/rzwitserloot/lombok/master/LICENSE lombok.txt
dl https://raw.githubusercontent.com/ThreeTen/threetenbp/master/LICENSE.txt threetenbp.txt
dl https://raw.githubusercontent.com/notnoop/java-apns/master/LICENSE java-apns.txt
dl https://raw.githubusercontent.com/mockito/mockito/master/LICENSE mockito.txt
dl https://raw.githubusercontent.com/jquery/jquery/master/LICENSE.txt jquery.txt
dl https://raw.githubusercontent.com/jquery/jquery/master/LICENSE.txt jquery-ui.txt
dl https://raw.githubusercontent.com/almasaeed2010/AdminLTE/master/LICENSE adminlte.txt
dl https://raw.githubusercontent.com/driftyco/ionicons/master/LICENSE ionicons.txt
dl https://raw.githubusercontent.com/twbs/bootstrap/master/LICENSE bootstrap.txt
dl https://raw.githubusercontent.com/junit-team/junit/master/LICENSE-junit.txt junit.txt

dl https://raw.githubusercontent.com/jboss-javassist/javassist/rel_3_16_1_ga/License.html javassist.html

dl https://raw.githubusercontent.com/jersey/jersey/master/LICENSE.html jersey.html

dl https://glassfish.dev.java.net/nonav/public/CDDL+GPL.html glassfish_cddl_gpl_1_0.html
dl https://glassfish.java.net/public/CDDL+GPL_1_1.html glassfish_cddl_gpl_1_1.html
