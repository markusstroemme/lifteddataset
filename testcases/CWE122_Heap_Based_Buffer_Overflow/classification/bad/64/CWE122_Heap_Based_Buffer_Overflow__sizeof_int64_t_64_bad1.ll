@global_var_34bd9 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_a0e4:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 8)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_a128, label %dec_label_pc_a11e

dec_label_pc_a11e:                                ; preds = %dec_label_pc_a0e4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_a128:                                ; preds = %dec_label_pc_a0e4
  store i64 2147483643, ptr %1, align 8
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_a154, label %dec_label_pc_a14f

dec_label_pc_a14f:                                ; preds = %dec_label_pc_a128
  call void @__stack_chk_fail()
  br label %dec_label_pc_a154

dec_label_pc_a154:                                ; preds = %dec_label_pc_a14f, %dec_label_pc_a128
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_a1dd:
  %0 = ptrtoint ptr %dataVoidPtr to i64
  call void @printLongLongLine(i64 %0)
  %1 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %1)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_2b997:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_34bd9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

