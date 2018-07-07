module Code
    def search(search_scope,compare)
        if search_scope == "All"
          all.order(:id)
        elsif compare == "Bihar vs District"
          where("Districts = ? OR Districts = ?", search_scope, "Bihar")
        else
          where(Districts: search_scope)
        end
      end
end