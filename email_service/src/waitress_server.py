from waitress import serve
import email_service

serve(email_service.app, host='0.0.0.0', port=49152)
