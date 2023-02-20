# LDAP

## ldapsearch

```shell
sudo apt install ldap-utils
ldapsearch -x -LLL -H ldaps://192.168.0.1:636 -w 'password' -D 'LDAP_BIND' -b "DC=lan" 'sAMAccountName=username' -d1
 ```

## ldaprc

<https://www.openldap.org/software/man.cgi?query=ldap.conf>

```text
FILES
       /usr/local/etc/openldap/ldap.conf
              system-wide ldap configuration file

       $HOME/ldaprc, $HOME/.ldaprc
              user ldap configuration file

       $CWD/ldaprc
              local ldap configuration file
```
