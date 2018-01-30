PARSE_AND_LIST_OPTIONS_AUDIT_GOT='
  fprintf (file, _("\
  -z audit-got                Generate PLT entry for GOT entry audit\n"));
'
PARSE_AND_LIST_ARGS_CASE_Z_AUDIT_GOT='
      else if (strcmp (optarg, "audit-got") == 0)
	link_info.audit_got = TRUE;
      else if (strcmp (optarg, "noaudit-got") == 0)
	link_info.audit_got = FALSE;
'

PARSE_AND_LIST_OPTIONS="$PARSE_AND_LIST_OPTIONS $PARSE_AND_LIST_OPTIONS_AUDIT_GOT"
PARSE_AND_LIST_ARGS_CASE_Z="$PARSE_AND_LIST_ARGS_CASE_Z $PARSE_AND_LIST_ARGS_CASE_Z_AUDIT_GOT"
