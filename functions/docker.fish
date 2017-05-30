function docker -d "Docker command wrapper"
    # Package entry-point
    set new_args

    for arg in $argv
        set -e argv[1]

        switch $arg
            case 'ps'
                set new_args $new_args $arg '--format' 'table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}\t{{.CreatedAt}}\t{{.Ports}}'

            case '*'
                set new_args $new_args $arg
        end
    end

    command docker $new_args

end
