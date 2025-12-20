@global_var_70d9e = external constant [4 x i8]

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1bdae:
  %0 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %0)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1bdd3:
  call void @anon0(i32 2)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

