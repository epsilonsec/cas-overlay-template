CAS_CONFIG_DIR="/etc/cas/config/cas.properties"
sed -i "s#CAS_LDAP_URL#${CAS_LDAP_URL}#g" $CAS_CONFIG_DIR
sed -i "s#CAS_LDAP_BASE_DN#${CAS_LDAP_BASE_DN}#g" $CAS_CONFIG_DIR
sed -i "s#CAS_LDAP_BIND_DN#${CAS_LDAP_BIND_DN}#g" $CAS_CONFIG_DIR
sed -i "s#CAS_LDAP_BIND_CREDENTIAL#${CAS_LDAP_BIND_CREDENTIAL}#g" $CAS_CONFIG_DIR

echo "Execute cas.war"
java -server -noverify -Xmx2048M -jar cas.war
