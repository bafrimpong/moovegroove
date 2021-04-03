module ApplicationHelper
    def set_image_width_height(width=100, height=100)
        "width: #{width}px; height: #{height}px;"
    end

    def load_activities_for_selection
        activities = Activity.all
        return activities.collect {|a|[a.name, a.id]}        
    end
end
