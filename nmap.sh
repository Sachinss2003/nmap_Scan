echo " Enter your choice What to do "
echo "Normal"
echo "Medium"
echo "Heavy"
echo "Lets begin Enter your choice"
read -p "Choice:--->>>" Choice
case $Choice in

	  Normal)
		      echo "Enter the IP Address"
                      read -p "IP----->" IP
                      nmap $IP
                             ;;

			    Medium)
				      echo "Enter the IP Address"
                                      read -p "IP----->" IP
                                      echo "Enter the Filter"
                                      read -p "Filter---->" Filter
                                      nmap $Filter $IP 
					    ;;
                           
			   Heavy)
				      echo "Enter the IP Address"
                                      read -p "IP----->" IP
                                      nmap -sS -sT -sU -sY -sV -PS -PE $IP 
					    ;;

					      *)
						          echo -n "unknown"
							      ;;
					      esac

