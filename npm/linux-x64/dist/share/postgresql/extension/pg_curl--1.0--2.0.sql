-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION pg_curl" to load this file. \quit

DO $DO$ DECLARE
    name text;
BEGIN
    FOR name IN SELECT concat_ws('.', n.nspname, p.proname)||'('||array_to_string(proargtypes::regtype[], ',')||')' FROM pg_extension AS e JOIN pg_depend AS d ON d.refobjid = e.oid JOIN pg_proc as p ON p.oid = d.objid JOIN pg_namespace AS n ON n.oid = p.pronamespace WHERE d.deptype = 'e' AND extname = 'pg_curl' LOOP
        EXECUTE format($format$
            DROP FUNCTION %1$s
        $format$, name);
    END LOOP;
END;$DO$;

CREATE FUNCTION curl_easy_header_reset(conname NAME DEFAULT NULL) RETURNS void AS 'MODULE_PATHNAME', 'pg_curl_easy_header_reset' LANGUAGE 'c';
CREATE FUNCTION curl_easy_mime_reset(conname NAME DEFAULT NULL) RETURNS void AS 'MODULE_PATHNAME', 'pg_curl_easy_mime_reset' LANGUAGE 'c';
CREATE FUNCTION curl_easy_postquote_reset(conname NAME DEFAULT NULL) RETURNS void AS 'MODULE_PATHNAME', 'pg_curl_easy_postquote_reset' LANGUAGE 'c';
CREATE FUNCTION curl_easy_prequote_reset(conname NAME DEFAULT NULL) RETURNS void AS 'MODULE_PATHNAME', 'pg_curl_easy_prequote_reset' LANGUAGE 'c';
CREATE FUNCTION curl_easy_quote_reset(conname NAME DEFAULT NULL) RETURNS void AS 'MODULE_PATHNAME', 'pg_curl_easy_quote_reset' LANGUAGE 'c';
CREATE FUNCTION curl_easy_recipient_reset(conname NAME DEFAULT NULL) RETURNS void AS 'MODULE_PATHNAME', 'pg_curl_easy_recipient_reset' LANGUAGE 'c';
CREATE FUNCTION curl_easy_reset(conname NAME DEFAULT NULL) RETURNS void AS 'MODULE_PATHNAME', 'pg_curl_easy_reset' LANGUAGE 'c';

CREATE FUNCTION curl_easy_escape(string text, conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_escape' LANGUAGE 'c';
CREATE FUNCTION curl_easy_unescape(url text, conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_unescape' LANGUAGE 'c';

CREATE FUNCTION curl_postfield_append(name text, value text DEFAULT null, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_postfield_append' LANGUAGE 'c';
CREATE FUNCTION curl_url_append(name text, value text DEFAULT null, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_url_append' LANGUAGE 'c';

CREATE FUNCTION curl_header_append(name text, value text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_header_append' LANGUAGE 'c';
CREATE FUNCTION curl_postquote_append(command text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_postquote_append' LANGUAGE 'c';
CREATE FUNCTION curl_prequote_append(command text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_prequote_append' LANGUAGE 'c';
CREATE FUNCTION curl_quote_append(command text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_quote_append' LANGUAGE 'c';
CREATE FUNCTION curl_recipient_append(email text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_recipient_append' LANGUAGE 'c';

CREATE FUNCTION curl_mime_data(data bytea, name text DEFAULT null, file text DEFAULT null, type text DEFAULT null, code text DEFAULT null, head text DEFAULT null, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_mime_data_bytea' LANGUAGE 'c';
CREATE FUNCTION curl_mime_data(data text, name text DEFAULT null, file text DEFAULT null, type text DEFAULT null, code text DEFAULT null, head text DEFAULT null, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_mime_data_text' LANGUAGE 'c';
CREATE FUNCTION curl_mime_file(data text, name text DEFAULT null, file text DEFAULT null, type text DEFAULT null, code text DEFAULT null, head text DEFAULT null, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_mime_file' LANGUAGE 'c';

CREATE FUNCTION curl_easy_setopt_postfields(parameter bytea, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_postfields' LANGUAGE 'c';

CREATE FUNCTION curl_easy_setopt_abstract_unix_socket(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_abstract_unix_socket' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_accept_encoding(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_accept_encoding' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_cainfo_blob(parameter bytea, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_cainfo_blob' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_cainfo(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_cainfo' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_capath(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_capath' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_cookiefile(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_cookiefile' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_cookiejar(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_cookiejar' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_cookielist(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_cookielist' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_cookie(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_cookie' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_crlfile(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_crlfile' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_customrequest(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_customrequest' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_default_protocol(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_default_protocol' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_dns_interface(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_dns_interface' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_dns_local_ip4(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_dns_local_ip4' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_dns_local_ip6(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_dns_local_ip6' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_dns_servers(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_dns_servers' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_doh_url(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_doh_url' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_egdsocket(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_egdsocket' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ftp_account(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ftp_account' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ftp_alternative_to_user(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ftp_alternative_to_user' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ftpport(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ftpport' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_interface(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_interface' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_issuercert_blob(parameter bytea, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_issuercert_blob' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_issuercert(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_issuercert' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_keypasswd(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_keypasswd' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_krblevel(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_krblevel' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_login_options(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_login_options' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_mail_auth(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_mail_auth' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_mail_from(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_mail_from' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_noproxy(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_noproxy' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_password(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_password' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_pinnedpublickey(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_pinnedpublickey' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_pre_proxy(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_pre_proxy' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_protocols_str(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_protocols_str' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_cainfo_blob(parameter bytea, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_cainfo_blob' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_cainfo(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_cainfo' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_capath(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_capath' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_crlfile(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_crlfile' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_issuercert_blob(parameter bytea, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_issuercert_blob' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_issuercert(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_issuercert' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_keypasswd(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_keypasswd' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxypassword(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxypassword' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_pinnedpublickey(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_pinnedpublickey' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_service_name(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_service_name' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_sslcert_blob(parameter bytea, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_sslcert_blob' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_sslcert(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_sslcert' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_sslcerttype(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_sslcerttype' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_ssl_cipher_list(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_ssl_cipher_list' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_sslkey_blob(parameter bytea, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_sslkey_blob' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_sslkey(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_sslkey' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_sslkeytype(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_sslkeytype' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_tls13_ciphers(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_tls13_ciphers' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_tlsauth_password(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_tlsauth_password' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_tlsauth_type(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_tlsauth_type' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_tlsauth_username(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_tlsauth_username' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxyusername(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxyusername' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxyuserpwd(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxyuserpwd' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_random_file(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_random_file' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_range(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_range' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_redir_protocols_str(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_redir_protocols_str' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_referer(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_referer' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_request_target(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_request_target' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_rtsp_session_id(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_rtsp_session_id' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_rtsp_stream_uri(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_rtsp_stream_uri' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_rtsp_transport(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_rtsp_transport' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_service_name(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_service_name' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_socks5_gssapi_service(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_socks5_gssapi_service' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssh_host_public_key_md5(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssh_host_public_key_md5' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssh_knownhosts(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssh_knownhosts' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssh_private_keyfile(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssh_private_keyfile' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssh_public_keyfile(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssh_public_keyfile' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_sslcert_blob(parameter bytea, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_sslcert_blob' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_sslcert(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_sslcert' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_sslcerttype(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_sslcerttype' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssl_cipher_list(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssl_cipher_list' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_sslengine(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_sslengine' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_sslkey_blob(parameter bytea, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_sslkey_blob' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_sslkey(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_sslkey' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_sslkeytype(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_sslkeytype' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_tls13_ciphers(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_tls13_ciphers' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_tlsauth_password(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_tlsauth_password' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_tlsauth_type(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_tlsauth_type' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_tlsauth_username(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_tlsauth_username' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_unix_socket_path(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_unix_socket_path' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_url(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_url' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_useragent(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_useragent' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_username(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_username' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_userpwd(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_userpwd' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_xoauth2_bearer(parameter text, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_xoauth2_bearer' LANGUAGE 'c';

CREATE FUNCTION curl_easy_setopt_accepttimeout_ms(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_accepttimeout_ms' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_address_scope(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_address_scope' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_append(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_append' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_autoreferer(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_autoreferer' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_buffersize(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_buffersize' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_certinfo(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_certinfo' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_connect_only(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_connect_only' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_connecttimeout_ms(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_connecttimeout_ms' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_connecttimeout(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_connecttimeout' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_cookiesession(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_cookiesession' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_crlf(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_crlf' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_dirlistonly(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_dirlistonly' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_disallow_username_in_url(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_disallow_username_in_url' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_dns_cache_timeout(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_dns_cache_timeout' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_dns_shuffle_addresses(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_dns_shuffle_addresses' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_dns_use_global_cache(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_dns_use_global_cache' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_expect_100_timeout_ms(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_expect_100_timeout_ms' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_failonerror(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_failonerror' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_filetime(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_filetime' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_followlocation(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_followlocation' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_forbid_reuse(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_forbid_reuse' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_fresh_connect(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_fresh_connect' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ftp_create_missing_dirs(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ftp_create_missing_dirs' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ftp_filemethod(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ftp_filemethod' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ftp_skip_pasv_ip(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ftp_skip_pasv_ip' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ftpsslauth(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ftpsslauth' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ftp_ssl_ccc(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ftp_ssl_ccc' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ftp_use_eprt(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ftp_use_eprt' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ftp_use_epsv(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ftp_use_epsv' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ftp_use_pret(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ftp_use_pret' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_gssapi_delegation(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_gssapi_delegation' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_happy_eyeballs_timeout_ms(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_happy_eyeballs_timeout_ms' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_haproxyprotocol(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_haproxyprotocol' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_header(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_header' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_http09_allowed(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_http09_allowed' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_httpauth(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_httpauth' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_http_content_decoding(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_http_content_decoding' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_httpget(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_httpget' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_httpproxytunnel(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_httpproxytunnel' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_http_transfer_decoding(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_http_transfer_decoding' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_http_version(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_http_version' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ignore_content_length(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ignore_content_length' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ipresolve(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ipresolve' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_keep_sending_on_error(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_keep_sending_on_error' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_localportrange(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_localportrange' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_localport(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_localport' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_low_speed_limit(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_low_speed_limit' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_low_speed_time(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_low_speed_time' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_maxconnects(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_maxconnects' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_maxfilesize(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_maxfilesize' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_maxredirs(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_maxredirs' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_netrc(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_netrc' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_new_directory_perms(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_new_directory_perms' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_new_file_perms(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_new_file_perms' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_nobody(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_nobody' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_path_as_is(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_path_as_is' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_pipewait(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_pipewait' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_port(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_port' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_postredir(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_postredir' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_post(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_post' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_protocols(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_protocols' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxyauth(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxyauth' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxyport(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxyport' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_ssl_options(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_ssl_options' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_ssl_verifyhost(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_ssl_verifyhost' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_ssl_verifypeer(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_ssl_verifypeer' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_sslversion(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_sslversion' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxy_transfer_mode(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxy_transfer_mode' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_proxytype(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_proxytype' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_put(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_put' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_redir_protocols(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_redir_protocols' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_resume_from(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_resume_from' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_rtsp_client_cseq(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_rtsp_client_cseq' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_rtsp_request(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_rtsp_request' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_rtsp_server_cseq(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_rtsp_server_cseq' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_sasl_ir(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_sasl_ir' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_server_response_timeout(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_server_response_timeout' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_socks5_auth(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_socks5_auth' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_socks5_gssapi_nec(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_socks5_gssapi_nec' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssh_auth_types(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssh_auth_types' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssh_compression(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssh_compression' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssl_enable_alpn(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssl_enable_alpn' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssl_enable_npn(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssl_enable_npn' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssl_falsestart(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssl_falsestart' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssl_options(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssl_options' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssl_sessionid_cache(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssl_sessionid_cache' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssl_verifyhost(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssl_verifyhost' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssl_verifypeer(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssl_verifypeer' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_ssl_verifystatus(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_ssl_verifystatus' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_sslversion(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_sslversion' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_stream_weight(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_stream_weight' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_suppress_connect_headers(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_suppress_connect_headers' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_tcp_fastopen(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_tcp_fastopen' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_tcp_keepalive(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_tcp_keepalive' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_tcp_keepidle(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_tcp_keepidle' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_tcp_keepintvl(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_tcp_keepintvl' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_tcp_nodelay(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_tcp_nodelay' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_tftp_blksize(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_tftp_blksize' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_tftp_no_options(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_tftp_no_options' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_timecondition(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_timecondition' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_timeout_ms(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_timeout_ms' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_timeout(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_timeout' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_timevalue(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_timevalue' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_transfer_encoding(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_transfer_encoding' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_transfertext(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_transfertext' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_unrestricted_auth(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_unrestricted_auth' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_upkeep_interval_ms(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_upkeep_interval_ms' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_upload_buffersize(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_upload_buffersize' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_upload(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_upload' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_use_ssl(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_use_ssl' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_verbose(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_verbose' LANGUAGE 'c';
CREATE FUNCTION curl_easy_setopt_wildcardmatch(parameter bigint, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_setopt_wildcardmatch' LANGUAGE 'c';

CREATE FUNCTION curl_easy_perform(try int DEFAULT 1, sleep bigint DEFAULT 1000000, conname NAME DEFAULT NULL) RETURNS boolean AS 'MODULE_PATHNAME', 'pg_curl_easy_perform' LANGUAGE 'c';
CREATE FUNCTION curl_multi_perform(try int DEFAULT 1, sleep bigint DEFAULT 1000000, timeout_ms int DEFAULT 1000) RETURNS void AS 'MODULE_PATHNAME', 'pg_curl_multi_perform' LANGUAGE 'c';

CREATE FUNCTION curl_easy_getinfo_headers(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_headers' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_response(conname NAME DEFAULT NULL) RETURNS bytea AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_response' LANGUAGE 'c';

CREATE FUNCTION curl_easy_getinfo_debug(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_debug' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_header_in(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_header_in' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_header_out(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_header_out' LANGUAGE 'c';

CREATE FUNCTION curl_easy_getinfo_data_in(conname NAME DEFAULT NULL) RETURNS bytea AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_data_in' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_data_out(conname NAME DEFAULT NULL) RETURNS bytea AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_data_out' LANGUAGE 'c';

CREATE FUNCTION curl_easy_getinfo_content_type(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_content_type' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_effective_url(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_effective_url' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_errbuf(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_errbuf' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_errdesc(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_errdesc' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_ftp_entry_path(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_ftp_entry_path' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_local_ip(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_local_ip' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_primary_ip(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_primary_ip' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_redirect_url(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_redirect_url' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_rtsp_session_id(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_rtsp_session_id' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_scheme(conname NAME DEFAULT NULL) RETURNS text AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_scheme' LANGUAGE 'c';

CREATE FUNCTION curl_easy_getinfo_activesocket(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_activesocket' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_condition_unmet(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_condition_unmet' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_errcode(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_errcode' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_filetime(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_filetime' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_header_size(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_header_size' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_httpauth_avail(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_httpauth_avail' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_http_connectcode(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_http_connectcode' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_http_version(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_http_version' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_lastsocket(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_lastsocket' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_local_port(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_local_port' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_num_connects(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_num_connects' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_os_errno(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_os_errno' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_primary_port(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_primary_port' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_protocol(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_protocol' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_proxyauth_avail(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_proxyauth_avail' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_proxy_ssl_verifyresult(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_proxy_ssl_verifyresult' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_redirect_count(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_redirect_count' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_request_size(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_request_size' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_response_code(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_response_code' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_rtsp_client_cseq(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_rtsp_client_cseq' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_rtsp_cseq_recv(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_rtsp_cseq_recv' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_rtsp_server_cseq(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_rtsp_server_cseq' LANGUAGE 'c';
CREATE FUNCTION curl_easy_getinfo_ssl_verifyresult(conname NAME DEFAULT NULL) RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_easy_getinfo_ssl_verifyresult' LANGUAGE 'c';

CREATE FUNCTION curl_http_version_1_0() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_http_version_1_0' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_http_version_1_1() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_http_version_1_1' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_http_version_2_0() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_http_version_2_0' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_http_version_2_prior_knowledge() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_http_version_2_prior_knowledge' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_http_version_2tls() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_http_version_2tls' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_http_version_3() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_http_version_3' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_http_version_none() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_http_version_none' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curlusessl_none() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlusessl_none' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlusessl_try() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlusessl_try' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlusessl_control() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlusessl_control' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlusessl_all() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlusessl_all' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curl_upkeep_interval_default() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_upkeep_interval_default' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curl_timecond_none() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_timecond_none' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_timecond_ifmodsince() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_timecond_ifmodsince' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_timecond_ifunmodsince() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_timecond_ifunmodsince' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curl_sslversion_default() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_default' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_sslversion_tlsv1() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_tlsv1' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_sslversion_sslv2() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_sslv2' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_sslversion_sslv3() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_sslv3' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_sslversion_tlsv1_0() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_tlsv1_0' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_sslversion_tlsv1_1() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_tlsv1_1' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_sslversion_tlsv1_2() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_tlsv1_2' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_sslversion_tlsv1_3() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_tlsv1_3' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_sslversion_max_default() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_max_default' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_sslversion_max_tlsv1_0() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_max_tlsv1_0' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_sslversion_max_tlsv1_1() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_max_tlsv1_1' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_sslversion_max_tlsv1_2() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_max_tlsv1_2' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_sslversion_max_tlsv1_3() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_sslversion_max_tlsv1_3' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curlsslopt_allow_beast() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlsslopt_allow_beast' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlsslopt_no_revoke() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlsslopt_no_revoke' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlsslopt_no_partialchain() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlsslopt_no_partialchain' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlsslopt_revoke_best_effort() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlsslopt_revoke_best_effort' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlsslopt_native_ca() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlsslopt_native_ca' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlsslopt_auto_client_cert() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlsslopt_auto_client_cert' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curlssh_auth_publickey() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlssh_auth_publickey' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlssh_auth_password() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlssh_auth_password' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlssh_auth_host() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlssh_auth_host' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlssh_auth_keyboard() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlssh_auth_keyboard' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlssh_auth_agent() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlssh_auth_agent' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlssh_auth_any() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlssh_auth_any' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curlauth_basic() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_basic' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlauth_digest() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_digest' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlauth_digest_ie() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_digest_ie' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlauth_bearer() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_bearer' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlauth_negotiate() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_negotiate' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlauth_ntlm() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_ntlm' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlauth_ntlm_wb() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_ntlm_wb' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlauth_any() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_any' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlauth_anysafe() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_anysafe' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlauth_only() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_only' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlauth_aws_sigv4() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_aws_sigv4' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlauth_gssapi() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_gssapi' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlauth_none() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlauth_none' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curl_rtspreq_options() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_rtspreq_options' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_rtspreq_describe() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_rtspreq_describe' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_rtspreq_announce() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_rtspreq_announce' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_rtspreq_setup() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_rtspreq_setup' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_rtspreq_play() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_rtspreq_play' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_rtspreq_pause() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_rtspreq_pause' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_rtspreq_teardown() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_rtspreq_teardown' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_rtspreq_get_parameter() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_rtspreq_get_parameter' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_rtspreq_set_parameter() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_rtspreq_set_parameter' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_rtspreq_record() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_rtspreq_record' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_rtspreq_receive() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_rtspreq_receive' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curlproto_dict() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_dict' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_file() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_file' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_ftp() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_ftp' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_ftps() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_ftps' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_gopher() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_gopher' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_http() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_http' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_https() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_https' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_imap() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_imap' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_imaps() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_imaps' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_ldap() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_ldap' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_ldaps() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_ldaps' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_pop3() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_pop3' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_pop3s() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_pop3s' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_rtmp() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_rtmp' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_rtmpe() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_rtmpe' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_rtmps() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_rtmps' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_rtmpt() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_rtmpt' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_rtmpte() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_rtmpte' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_rtmpts() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_rtmpts' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_rtsp() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_rtsp' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_scp() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_scp' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_sftp() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_sftp' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_smb() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_smb' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_smbs() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_smbs' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_smtp() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_smtp' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_smtps() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_smtps' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_telnet() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_telnet' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_tftp() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_tftp' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproto_all() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproto_all' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curlproxy_http() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproxy_http' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproxy_https() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproxy_https' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproxy_http_1_0() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproxy_http_1_0' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproxy_socks4() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproxy_socks4' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproxy_socks4a() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproxy_socks4a' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproxy_socks5() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproxy_socks5' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlproxy_socks5_hostname() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlproxy_socks5_hostname' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curl_redir_post_301() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_redir_post_301' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_redir_post_302() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_redir_post_302' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_redir_post_303() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_redir_post_303' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_redir_post_all() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_redir_post_all' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curl_netrc_optional() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_netrc_optional' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_netrc_ignored() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_netrc_ignored' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_netrc_required() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_netrc_required' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curl_ipresolve_whatever() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_ipresolve_whatever' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_ipresolve_v4() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_ipresolve_v4' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curl_ipresolve_v6() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_ipresolve_v6' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curl_het_default() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_het_default' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curlgssapi_delegation_flag() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlgssapi_delegation_flag' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlgssapi_delegation_policy_flag() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlgssapi_delegation_policy_flag' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlgssapi_delegation_none() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlgssapi_delegation_none' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curlftpssl_ccc_none() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlftpssl_ccc_none' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlftpssl_ccc_passive() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlftpssl_ccc_passive' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlftpssl_ccc_active() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlftpssl_ccc_active' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curlftpauth_default() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlftpauth_default' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlftpauth_ssl() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlftpauth_ssl' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlftpauth_tls() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlftpauth_tls' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curlftpmethod_multicwd() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlftpmethod_multicwd' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlftpmethod_nocwd() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlftpmethod_nocwd' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlftpmethod_singlecwd() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlftpmethod_singlecwd' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curlftp_create_dir() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlftp_create_dir' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlftp_create_dir_retry() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlftp_create_dir_retry' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
CREATE FUNCTION curlftp_create_dir_none() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curlftp_create_dir_none' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;

CREATE FUNCTION curl_max_write_size() RETURNS bigint AS 'MODULE_PATHNAME', 'pg_curl_max_write_size' LANGUAGE 'c' IMMUTABLE PARALLEL SAFE;
