# requires jq
function format_clipboard_json --description 'Format JSON text in the clipboard; if the text isn''t formatted, do nothing.'
    # jq writes nothing to stdout when the input isn't valid JSON
    set -l formatted (pbpaste | jq '.' 2>/dev/null | string collect)
    if test -n "$formatted"
        printf '%s\n' $formatted | pbcopy
    end
end
