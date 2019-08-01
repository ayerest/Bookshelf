def menu_option_three(active_user)
    action = 0
    menu = active_user.shelves.length + 1
    until action == menu
        puts "Enter a shelf number to view its contents:"
        print_shelf_list(active_user)
        puts "#{menu}. Return to Menu"
        action = STDIN.gets.chomp.to_i
        shelf_choice = active_user.shelves[action - 1]
        next if action == menu
        view_shelf_contents(shelf_choice) #print books
    end
end