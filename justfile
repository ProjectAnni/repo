set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

root := env_var_or_default('ANNI_REPO', invocation_directory_native())

get id catalog:
    anni repo --root {{root}} get musicbrainz --id {{id}} {{catalog}}

get-vgmdb catalog:
    anni repo --root {{root}} get vgmdb {{catalog}}

lint:
    anni repo --root {{root}} lint