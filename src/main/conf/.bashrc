
BASHRCDIR="${BASHRCDIR="${HOME}/.bashrc.d"}";

if test -d "${BASHRCDIR}"; then
	for file in $(ls -1 "${BASHRCDIR}"); do
		. "${BASHRCDIR}"/"${file}"
	done
fi
