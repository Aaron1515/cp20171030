module ContactsHelper
	def cut_off(arg="none")
		if arg == nil
			arg = "none"
		end
		if arg.size > 60
			return arg[0..60]+"....."
		else
			return arg
		end
	end
end
