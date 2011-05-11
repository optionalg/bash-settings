_git_short_complete ()
{
	local cur words cword
	_get_comp_words_by_ref -n =: cur words cword
	local cmd="$1"
	local i c=1 remote="" pfx="" lhs=1 no_complete_refspec=0
	while [ $c -lt $cword ]; do
		i="${words[c]}"
		case "$i" in
		--mirror) [ "$cmd" = "push" ] && no_complete_refspec=1 ;;
		--all)
			case "$cmd" in
			push) no_complete_refspec=1 ;;
			fetch)
				COMPREPLY=()
				return
				;;
			*) ;;
			esac
			;;
		-*) ;;
		*) remote="$i"; break ;;
		esac
		c=$((++c))
	done
	if [ -z "$remote" ]; then
		__gitcomp "$(__git_remotes)"
		return
	fi
	if [ $no_complete_refspec = 1 ]; then
		COMPREPLY=()
		return
	fi
	[ "$remote" = "." ] && remote=
	case "$cur" in
	*:*)
		case "$COMP_WORDBREAKS" in
		*:*) : great ;;
		*)   pfx="${cur%%:*}:" ;;
		esac
		cur="${cur#*:}"
		lhs=0
		;;
	+*)
		pfx="+"
		cur="${cur#+}"
		;;
	esac
	case "$cmd" in
	fetch)
		if [ $lhs = 1 ]; then
			__gitcomp "$(__git_refs2 "$remote")" "$pfx" "$cur"
		else
			__gitcomp "$(__git_refs)" "$pfx" "$cur"
		fi
		;;
	pull)
		if [ $lhs = 1 ]; then
			__gitcomp "$(__git_refs "$remote")" "$pfx" "$cur"
		else
			__gitcomp "$(__git_refs)" "$pfx" "$cur"
		fi
		;;
	push)
		if [ $lhs = 1 ]; then
			__gitcomp "$(__git_refs)" "$pfx" "$cur"
		else
			__gitcomp "$(__git_refs "$remote")" "$pfx" "$cur"
		fi
		;;
	esac
}

_gull()
{
  _git_short_complete pull
}

_gush()
{
  _git_short_complete push
}

complete -o bashdefault -o default -o nospace -F _gull gull 2>/dev/null \
  || complete -o default -o nospace -F _gull gull
complete -o bashdefault -o default -o nospace -F _gush gush 2>/dev/null \
  || complete -o default -o nospace -F _gush gush
complete -o bashdefault -o default -o nospace -F _git_checkout gco 2>/dev/null \
  || complete -o default -o nospace -F _git_checkout gco
