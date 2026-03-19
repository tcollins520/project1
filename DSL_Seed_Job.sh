job('Jenkin_Job_BY_DSL') {

    description('First Jenkins Job created using DSL')

    parameters {
        booleanParam('FLAG', true, 'Enable or disable flag')
        choiceParam('OPTION', ['option 1 (default)', 'option 2', 'option 3'], 'Choose an option')
    }

    scm {
        git {
            remote {
                url('https://github.com/tcollins520/project1.git')
            }
            branch('main')
        }
    }

    triggers {
        cron('* * * * *')
    }

    steps {
        shell('''
            echo "DSL Demo"
            bash /opt/scripts/memory_check.sh
        ''')
    }

    publishers {
        mailer('devopscicd05@gmail.com', true, true)
    }
}
