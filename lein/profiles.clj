{:user  {:dependencies [[alembic "0.3.2"]]
         :plugins  [[aprint "0.1.1"]
                    [lein-cloverage "1.0.6"]
                    [lein-localrepo "0.5.3"]
                    [lein-oneoff "0.3.1"]
                    [test2junit "1.1.2"]]
         :repl-options  {:prompt  (fn  [ns]  (str "\033[1;32m" ns "=>" "\033[0m "))}}}

