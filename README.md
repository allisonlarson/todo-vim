# Todo-vim

Simple syntax highlighter and priority manager for a .todo file.

## Easy install

    clone this repository
    cd todo-vim
    cp -R * ~/.vim

or install via pathogen

## Priorities

1-3 Rankings, where 1 is most important and 3 is least important
! Priority is unknown. Will be sorted to top of file
x Finished. Will be sorted to bottom of file

## Sorting

Only supporting one command, that will auto sort your todos based on the priority level.
`<localleader>s` will sort priorities.

    3 Clean kitchen

    1 Pay bill
      1 Electric
      Water

    x Feed cat

    2 Eat dinner

    ! Fix toaster
      Don't electrocute self

to:

    ! Fix toaster
      Don't electrocute self

    1 Pay bill
      1 Electric
      Water

    2 Eat dinner

    3 Clean kitchen

    x Feed cat

Major TODOs must be surrounded by newlines for sorting to work. Sorting subtasks is not supported, but will be syntax highlighted.

## Finishing

`<localleader>x` will replace the current priority level with an x, marking it complete. This can be done from any of the sublines to update the major lined todo.

## Help

To install help, run `:helptags ~/.vim/doc` after copying files. Then access help with `:h todo.txt`

