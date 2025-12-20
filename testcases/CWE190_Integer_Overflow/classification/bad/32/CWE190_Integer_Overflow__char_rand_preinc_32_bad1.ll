@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1392e:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = sext i1 %3 to i32
  %storemerge.in = xor i32 %6, %7
  %storemerge = trunc i32 %storemerge.in to i8
  %8 = add i8 %storemerge, 1
  call void @printHexCharLine(i8 %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_139dd, label %dec_label_pc_139d8

dec_label_pc_139d8:                               ; preds = %dec_label_pc_1392e
  call void @__stack_chk_fail()
  br label %dec_label_pc_139dd

dec_label_pc_139dd:                               ; preds = %dec_label_pc_139d8, %dec_label_pc_1392e
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

