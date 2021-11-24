config=`cat $DEFAULTS_JOURNAL_TEMPLATE`
config=${config/\$DEFAULTS_JOURNAL_PERSONAL/"$DEFAULTS_JOURNAL_PERSONAL"}
config=${config/\$DEFAULTS_JOURNAL_WORK/"$DEFAULTS_JOURNAL_WORK"}

save-config "jrnl/jrnl.yaml" "$config"