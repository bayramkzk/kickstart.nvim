; extends

(redirected_statement
  body: (command
    name: ((command_name ([(word)] @cmd_word.content
       (#eq? @cmd_word.content "sqlite3")))))
  redirect: (heredoc_redirect
    ([(heredoc_body)] @injection.content
    (#set! injection.language "sql"))))
