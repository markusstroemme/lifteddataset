@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_17381:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 9223372036854775807, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_173d3, label %dec_label_pc_173ce

dec_label_pc_173ce:                               ; preds = %dec_label_pc_17381
  call void @__stack_chk_fail()
  br label %dec_label_pc_173d3

dec_label_pc_173d3:                               ; preds = %dec_label_pc_173ce, %dec_label_pc_17381
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_17496:
  %0 = icmp slt ptr %dataVoidPtr, inttoptr (i64 1 to ptr)
  br i1 %0, label %dec_label_pc_174d7, label %dec_label_pc_174c0

dec_label_pc_174c0:                               ; preds = %dec_label_pc_17496
  %1 = ptrtoint ptr %dataVoidPtr to i64
  %2 = mul i64 %1, 2
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_174d7

dec_label_pc_174d7:                               ; preds = %dec_label_pc_174c0, %dec_label_pc_17496
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

