#One way of ceating hash
first_hash = Hash[:first,100,:second,200]
puts first_hash
second_hash = Hash[[[:third, 300], [:fourth, 400]]]
puts second_hash


#A way of creating hash, where keys when queried are not present, what is the default value to be returned.

third_hash = Hash.new { |hash, key| hash[key] = "XYZ"}
third_hash[1] = "ABC"
third_hash[2] = "DEF"
puts third_hash[3]  # this is added to third_hash
puts third_hash

#storing a value in hash
third_hash.store(4,"MNO")
puts third_hash
puts third_hash.default


#testing delete methods
fourth_hash = Hash[:hundred,100,:twohundred,200,:thirdhundred,300]
puts fourth_hash
fourth_hash.delete(:hundred)  # the original hash gets modified
print fourth_hash, "--fourth_hash, delete method modifies original hash\n --------\n"

#testing conditional deletes
fifth_hash = {lakh: 1, twolakh: 2, threelakh: 3}
puts fifth_hash
fifth_hash.delete_if { |key, value| value == 2}
print fifth_hash, "--fifth_hash, delete_if method modifies original hash\n", "--------\n"

#testing each iterator
sixth_hash = {thousnd: 1, twothousnd: 2, threethousnd: 3}
each_sixth_hash = sixth_hash.each { |key, value| value+1 }
puts each_sixth_hash

#testing keep_if 
seventh_hash = {crore: 1, twocrore: 2, threecrore: 3}
puts seventh_hash
seventh_hash.keep_if { |key, value| value == 3}
print seventh_hash, "--seventh_hash, keep_if method modofies original hash\n -------------\n"

#tetsing reject method
eigth_hash = {ten: 1, twoten: 2, threeten: 3}
puts eigth_hash
eigth_hash_after_reject = eigth_hash.reject { |key, value| value > 2}
puts eigth_hash
print eigth_hash_after_reject , "--reject method doesnt modify original hash, but creates a new hash\n-----\n"

#testing select method
ninth_hash = {million: 1, twomillion: 2, threemillion: 3}
ninth_hash_select = ninth_hash.select { |key, value| value > 1}
puts ninth_hash
print ninth_hash_select, "--select method creates a new hash with the selected elements\n-----\n"

#testing merge method
tenth_hash = {a: 1, b: 2, c: 3}
tenth_hash_second = {b: 5, c: 6, d: 7}
merged_tenth_hash = tenth_hash.merge(tenth_hash_second)
print tenth_hash, "--tenth_hash\n"
print tenth_hash_second, "--tenth_hash_second\n"
print merged_tenth_hash, "--merged_tenth_hash\n -------\n"

#testing update method
eleventh_hash = {a:1, b: 2, c: 3, d: 4}
eleventh_hash_second = {c: 10, d: 11, e: 12, f: 13}
print eleventh_hash, "--eleventh_hash before updating\n"
update_eleventh_hash = eleventh_hash.update(eleventh_hash_second)
print eleventh_hash, "--eleventh_hash after updating\n"
print eleventh_hash_second, "--eleventh_hash_second\n"
print "update method changes the original hash, whereas merge does not\n"
print update_eleventh_hash, "--update_eleventh_hash\n --------\n"
