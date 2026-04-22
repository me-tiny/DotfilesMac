if status is-interactive
    if not set -q tide_left_prompt_items; and type -q tide
        tide configure --auto --style='Lean' --prompt_colors='True color' --show_time='No' --lean_prompt_height='Two lines' --prompt_connection='Disconnected' --prompt_spacing='Compact' --icons='Few icons'
        set -g __setup__clear_screen_prompt_count 0
        function __setup__clear_screen --on-event fish_prompt
            if test "$__setup__clear_screen_prompt_count" = 0
                clear
                echo "          Tide has been set up."
                echo "          Press enter to begin."
                set -e __setup__clear_screen_prompt_count
            else
                clear
                functions -e __setup__clear_screen
                fish_greeting
            end
        end
    end
end
