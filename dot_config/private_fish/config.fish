if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-login
    fastfetch
    echo "welcome back!"
end

if not set -q SSH_AUTH_SOCK
    eval (ssh-agent -c) >/dev/null
end
