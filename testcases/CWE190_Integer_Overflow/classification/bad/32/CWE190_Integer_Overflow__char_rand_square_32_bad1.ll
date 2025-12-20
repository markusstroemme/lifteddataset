@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2f7bf:
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
  %8 = mul i8 %storemerge, %storemerge
  call void @printHexCharLine(i8 %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_2f86b, label %dec_label_pc_2f866

dec_label_pc_2f866:                               ; preds = %dec_label_pc_2f7bf
  call void @__stack_chk_fail()
  br label %dec_label_pc_2f86b

dec_label_pc_2f86b:                               ; preds = %dec_label_pc_2f866, %dec_label_pc_2f7bf
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

