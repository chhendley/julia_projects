using Dates

println("Enter date and time (YYYY-MM-DD HH:MM:SS): ")
datetime_str = readline()

try
    datetime = DateTime(datetime_str, "yyyy-mm-dd HH:MM:SS")  # Proper parsing
    println("DateTime: ", datetime)
    
    function count_down(target_dt::DateTime)
        while now() < target_dt
            diff = target_dt - now()  # Compute time difference
            total_seconds = Dates.value(diff) ÷ 1000  # Convert milliseconds to seconds safely
            
            days = fld(total_seconds, 86400)  # 86400 seconds in a day
            hours = fld(total_seconds % 86400, 3600)  # Extract hours
            minutes = fld(total_seconds % 3600, 60)  # Extract minutes
            seconds = total_seconds % 60  # Remaining seconds
            
            println("Time left: $(days)d:$(hours)h:$(minutes)m:$(seconds)s")
            sleep(1)  # Wait 1 second before updating countdown
        end
        println("Time is up!!")
    end

    count_down(datetime)  # Pass the parsed DateTime object

catch e
    println("Invalid date and time format. Please use YYYY-MM-DD HH:MM:SS.")
    println("Error: ", e)
end
